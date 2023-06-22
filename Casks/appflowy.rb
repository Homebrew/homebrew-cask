cask "appflowy" do
  version "0.2.3"
  sha256 "66036c013a5807a7dfadfd982aa221d1f920ff8eaf727fc3d887b47b62d57f9a"

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
