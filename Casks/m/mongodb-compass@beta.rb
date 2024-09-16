cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.44.4-beta.5"
  sha256 arm:   "620365adedc92756cd92958222ee556ea8bf6230523eac73152bbaa89ca0b457",
         intel: "f819cd8f6ba853db541a5ca1c195c7e4c9767a7a34a38ea70761bb9f03ff4500"

  url "https://downloads.mongodb.com/compass/beta/mongodb-compass-#{version}-darwin-#{arch}.dmg"
  name "MongoDB Compass"
  desc "GUI for MongoDB"
  homepage "https://www.mongodb.com/try/download/compass"

  livecheck do
    url "https://github.com/mongodb-js/compass/releases?q=prerelease%3Atrue&expanded=true"
    regex(%r{href=["']?[^"' >]*?/tag/\D*?(\d+(?:\.\d+)+-beta\.\d)[^"' >]*?["' >]}i)
    strategy :page_match
  end

  depends_on macos: ">= :catalina"

  app "MongoDB Compass Beta.app"

  zap trash: [
    "~/.mongodb",
    "~/Library/Application Support/MongoDB Compass Beta",
    "~/Library/Preferences/com.mongodb.compass.beta.plist",
    "~/Library/Saved Application State/com.mongodb.compass.beta.savedState",
  ]
end
