cask "caprine" do
  arch arm: "-arm64"

  version "2.60.2"
  sha256 arm:   "dfd61e8dd26c06a2049ff9cf05a75848153645dde3499e2a1327c3c1d79a2d19",
         intel: "33ae74206c1df87af5615ac9b4fcebb048c566d599c7e9284e9dad96b11213c0"

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-#{version}#{arch}.dmg"
  name "Caprine"
  desc "Elegant Facebook Messenger desktop app"
  homepage "https://github.com/sindresorhus/caprine"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
