cask "rocket-chat" do
  version "3.8.6"
  sha256 "74aef0abf9a2f43ad578d4da477f5204b3f562322f12c2626b0e57e252aae896"

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
    "~/Library/Caches/chat.rocket.electron.helper",
    "~/Library/Caches/chat.rocket.ShipIt",
    "~/Library/Caches/chat.rocket",
    "~/Library/Preferences/chat.rocket.electron.helper.plist",
    "~/Library/Preferences/chat.rocket.plist",
    "~/Library/Saved Application State/chat.rocket.savedState",
  ]
end
