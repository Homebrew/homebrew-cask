cask "caprine" do
  version "2.52.2"
  sha256 "5ec1abe0afe505f64e03e3c22d8bad661030b491b2ecfebbbb56189c3bf5aef2"

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}.dmg"
  appcast "https://github.com/sindresorhus/caprine/releases.atom"
  name "Caprine"
  desc "Elegant Facebook Messenger desktop app"
  homepage "https://github.com/sindresorhus/caprine"

  auto_updates true

  app "Caprine.app"

  zap trash: [
    "~/Library/Application Support/Caprine",
    "~/Library/Logs/Caprine",
    "~/Library/Caches/com.sindresorhus.caprine",
    "~/Library/Caches/com.sindresorhus.caprine.ShipIt",
    "~/Library/Preferences/com.sindresorhus.caprine.helper.plist",
    "~/Library/Preferences/com.sindresorhus.caprine.plist",
    "~/Library/Saved Application State/com.sindresorhus.caprine.savedState",
  ]
end
