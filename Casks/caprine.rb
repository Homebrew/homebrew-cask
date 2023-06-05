cask "caprine" do
  version "2.57.4"
  sha256 "9a7f80442bf3c07cd2fb702f91473918c9abb2e4c3b5c909b278d5bf3b4f8cfc"

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}.dmg"
  name "Caprine"
  desc "Elegant Facebook Messenger desktop app"
  homepage "https://github.com/sindresorhus/caprine"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Caprine.app"

  zap trash: [
    "~/Library/Application Support/Caprine",
    "~/Library/Caches/com.sindresorhus.caprine",
    "~/Library/Caches/com.sindresorhus.caprine.ShipIt",
    "~/Library/Logs/Caprine",
    "~/Library/Preferences/com.sindresorhus.caprine.helper.plist",
    "~/Library/Preferences/com.sindresorhus.caprine.plist",
    "~/Library/Saved Application State/com.sindresorhus.caprine.savedState",
  ]
end
