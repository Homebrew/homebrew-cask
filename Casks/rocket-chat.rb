cask "rocket-chat" do
  version "3.0.0"
  sha256 "67921d2e673a61b7c7c3dd3fa29376f3f2070b260e57e5f789877768d21ce5c5"

  # github.com/RocketChat/Rocket.Chat.Electron/ was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast "https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom"
  name "Rocket.Chat"
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
