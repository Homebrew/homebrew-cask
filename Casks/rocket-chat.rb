cask "rocket-chat" do
  version "3.7.7"
  sha256 "2a6aa37bd81496f3c2b449ddd1bce823d23d43c916feff6220b828ec05cff7cf"

  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg",
      verified: "github.com/RocketChat/Rocket.Chat.Electron/"
  name "Rocket.Chat"
  desc "Official desktop client for Rocket.Chat"
  homepage "https://rocket.chat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Rocket.Chat.app"

  zap trash: [
    "~/Library/Application Support/Rocket.Chat",
    "~/Library/Caches/chat.rocket.electron.helper",
    "~/Library/Caches/chat.rocket.ShipIt",
    "~/Library/Caches/chat.rocket",
    "~/Library/Preferences/chat.rocket.electron.helper.plist",
    "~/Library/Preferences/chat.rocket.plist",
    "~/Library/Saved Application State/chat.rocket.savedState",
  ]
end
