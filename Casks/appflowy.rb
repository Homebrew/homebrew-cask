cask "appflowy" do
  version "0.0.4"
  sha256 "2da964f659f6c0fcf260d76b8d8a3368aff9bf746fd5c3df2e8e8c28207d6bc5"

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
