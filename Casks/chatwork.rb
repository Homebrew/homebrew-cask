cask "chatwork" do
  version "2.6.37.5342"
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
end
