cask "rocket-chat" do
  version "3.9.14"
  sha256 "f1cbcf9027ced3782669712a293ee46918f2b5ec68fe0b840d495e579cce5e6d"

  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}-mac.dmg",
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
    "~/Library/Caches/chat.rocket",
    "~/Library/Caches/chat.rocket.electron.helper",
    "~/Library/Caches/chat.rocket.ShipIt",
    "~/Library/Preferences/chat.rocket.electron.helper.plist",
    "~/Library/Preferences/chat.rocket.plist",
    "~/Library/Saved Application State/chat.rocket.savedState",
  ]
end
