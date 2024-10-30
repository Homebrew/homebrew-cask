cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.44.6-beta.3"
  sha256 arm:   "ea8ef526b04c056eb585ebaaf96c4077065db5ce1e42f20ba3c95a30156aad35",
         intel: "b02476f3c11573f108b11068e81b5988a17fd06f1507fd0c9feb1c21c447a2f0"

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
