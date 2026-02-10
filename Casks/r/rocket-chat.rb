cask "rocket-chat" do
  version "4.12.0"
  sha256 "e8c37340a151f1dd888f01ad7352f4c5cd1e461bc5ea3e92d9aa0dd3dbd71b70"

  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version.csv.first}/rocketchat-#{version.csv.second || version.csv.first}-mac.dmg",
      verified: "github.com/RocketChat/Rocket.Chat.Electron/"
  name "Rocket.Chat"
  desc "Official desktop client for Rocket.Chat"
  homepage "https://rocket.chat/"

  # The tag version can differ from the filename version, so we include both in
  # the `version` when necessary.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/rocketchat[._-]?v?(\d+(?:\.\d+)+)[._-]mac\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        next match[1] if match[1] == match[2]

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
