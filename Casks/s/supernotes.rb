cask "supernotes" do
  arch arm: "-arm64"

  version "3.2.2"
  sha256 arm:   "03aba9c33a7ff0986d216f2b924c1bbdad7e3459b9b31ddb718e09ef8bdfcdd3",
         intel: "91ba92bc70b05fe765a2209f952d1b2234e6f97de112da6c7d2914e94c56e720"

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
  depends_on macos: ">= :monterey"

  app "Supernotes.app"

  zap trash: [
    "~/Library/Application Support/Supernotes",
    "~/Library/Logs/Supernotes",
    "~/Library/Preferences/app.supernotes.SupernotesDesktop.plist",
    "~/Library/Saved Application State/app.supernotes.SupernotesDesktop.savedState",
  ]
end
