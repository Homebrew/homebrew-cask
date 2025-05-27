cask "chatwork" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.13.0"
  sha256 :no_check

  url "https://desktop-app.chatwork.com/installer/ChatWork.dmg"
  name "ChatWork"
  desc "Group chat software"
  homepage "https://www.chatwork.com/"

  livecheck do
    url "https://desktop-release.chatwork.com/darwin/#{livecheck_arch}/latest?version=0.0.0"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ChatWork.app"

  zap trash: [
    "~/Library/Application Support/Chatwork",
    "~/Library/Caches/com.electron.chatwork",
    "~/Library/Caches/com.electron.chatwork.ShipIt",
    "~/Library/HTTPStorages/com.electron.chatwork",
    "~/Library/Preferences/com.electron.chatwork.plist",
  ]
end
