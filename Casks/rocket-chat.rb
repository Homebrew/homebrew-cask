cask "rocket-chat" do
  version "3.1.1"
  sha256 "3d985fec01e3bed309969a3f52fa217a7e21f05860745dc658fd21befdca878d"

  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg",
      verified: "github.com/RocketChat/Rocket.Chat.Electron/"
  appcast "https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom"
  name "Rocket.Chat"
  desc "Official desktop client for Rocket.Chat"
  homepage "https://rocket.chat/"

  auto_updates true

  app "Rocket.Chat.app"

  zap trash: [
    "~/Library/Application Support/Rocket.Chat",
    "~/Library/Caches/chat.rocket",
    "~/Library/Caches/chat.rocket.ShipIt",
    "~/Library/Caches/chat.rocket.electron.helper",
    "~/Library/Preferences/chat.rocket.plist",
    "~/Library/Preferences/chat.rocket.electron.helper.plist",
    "~/Library/Saved Application State/chat.rocket.savedState",
  ]
end
