cask "rocket-chat" do
  version "3.0.4"
  sha256 "0b8da4a59c08a7d3c8e90b0b8d2d3c2770ebd1885ac2dee5f8d3a62cbe1cc6c5"

  # github.com/RocketChat/Rocket.Chat.Electron/ was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
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
