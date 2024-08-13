cask "supernotes" do
  arch arm: "-arm64"

  version "3.1.4"
  sha256 arm:   "722a695df913089d5bd2b21321f73be64db7e4cf2f30198470e361c145ddf508",
         intel: "d2d1b446283161562833973c389d5bccd9fddcc499274e00d54cd3c8aa36f1a8"

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
  depends_on macos: ">= :high_sierra"

  app "Supernotes.app"

  zap trash: [
    "~/Library/Application Support/Supernotes",
    "~/Library/Logs/Supernotes",
    "~/Library/Preferences/app.supernotes.SupernotesDesktop.plist",
    "~/Library/Saved Application State/app.supernotes.SupernotesDesktop.savedState",
  ]
end
