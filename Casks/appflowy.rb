cask "appflowy" do
  version "0.0.2"
  sha256 "3d5177015cc568eab83a2e1d4ff71fe28ad31d63834dc3aa32c23742b09b6b29"

  url "https://github.com/AppFlowy-IO/appflowy/releases/download/#{version}/AppFlowy-MacOS.zip",
      verified: "github.com/AppFlowy-IO/appflowy/"
  name "appflowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
