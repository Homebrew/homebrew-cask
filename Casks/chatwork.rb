cask "chatwork" do
  version "2.6.41.5789"
  sha256 :no_check

  url "https://desktop-app.chatwork.com/installer/ChatWork.dmg"
  name "ChatWork"
  desc "Group chat software"
  homepage "https://www.chatwork.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "ChatWork.app"

  zap trash: [
    "~/Library/Application Support/Chatwork",
    "~/Library/Caches/com.electron.chatwork",
    "~/Library/Caches/com.electron.chatwork.ShipIt",
    "~/Library/HTTPStorages/com.electron.chatwork",
    "~/Library/Preferences/com.electron.chatwork.plist",
  ]
end
