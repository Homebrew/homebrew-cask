cask "mongodb-compass@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.44.4-beta.3"
  sha256 arm:   "5c7f65f1cf51c5525aa315062be11a3497664e3fec9e3f2d92ced19a83779536",
         intel: "0e5214584731d8c98b6e991fb3051c7daf528421df5f62313fcb678d9abffecb"

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
