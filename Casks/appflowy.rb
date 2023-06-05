cask "appflowy" do
  version "0.1.6"
  sha256 "6fc17b27f0f443d8768a49d107e78c3276702daa1f461f595ca1556352250ed6"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy_#{version}_macos-x86_64.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
