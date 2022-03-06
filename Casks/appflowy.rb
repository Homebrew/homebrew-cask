cask "appflowy" do
  version "0.0.3"
  sha256 "d475a31cd138661d611b74138e05c2e729741c66c844062ae9c6d202fe5b5914"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-macos-x86_64.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "appflowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
