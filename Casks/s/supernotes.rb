cask "supernotes" do
  arch arm: "-arm64"

  version "3.2.1"
  sha256 arm:   "1975824ec7d23cf8147378fa681ce2d000b77b55867dd8cf06b1c123913860c0",
         intel: "e61787cd9a37aee7ba973d782c87e21b89556e2c4eea9db2d9906c91ceba9faa"

  url "https://download.supernotes.app/Supernotes-#{version}#{arch}.dmg"
  name "Supernotes"
  desc "Collaborative note-taking app"
  homepage "https://supernotes.app/"

  livecheck do
    url "https://api.supernotes.app/v1"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Supernotes.app"

  zap trash: [
    "~/Library/Application Support/Supernotes",
    "~/Library/Logs/Supernotes",
    "~/Library/Preferences/app.supernotes.SupernotesDesktop.plist",
    "~/Library/Saved Application State/app.supernotes.SupernotesDesktop.savedState",
  ]
end
