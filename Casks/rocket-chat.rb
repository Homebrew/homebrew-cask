cask "rocket-chat" do
  version "3.7.4"
  sha256 "c3f871a29c1e7cb98b35d193a6849ec40da0e98518be4878e4656d0610e41f57"

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
