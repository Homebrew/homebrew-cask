cask "caprine" do
  version "2.50.0"
  sha256 "c0bf915543c03bd07ba3f1b9a99eb078b383de6794bdbddd61216dcacd88fc25"

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
