cask "appflowy" do
  version "0.5.1"
  sha256 "f6332b88d86379e8d0450c4ed270c054cbff6a294af8e7bba6291ac790b8c283"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-universal.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
