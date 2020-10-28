cask "rocket-chat" do
  version "3.0.5"
  sha256 "e5aafe51e49e081f55740cc59cf344b9cdb8b5d3c7dda470abd73cd49d23878c"

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
