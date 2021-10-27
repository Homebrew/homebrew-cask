cask "rocket-chat" do
  version "3.5.7"
  sha256 "f0ee490423f3dd44ee6cd83bdfcc34da5082dfb07e6c374638ed84207f449bef"

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
    "~/Library/Caches/chat.rocket",
    "~/Library/Caches/chat.rocket.ShipIt",
    "~/Library/Caches/chat.rocket.electron.helper",
    "~/Library/Preferences/chat.rocket.plist",
    "~/Library/Preferences/chat.rocket.electron.helper.plist",
    "~/Library/Saved Application State/chat.rocket.savedState",
  ]
end
