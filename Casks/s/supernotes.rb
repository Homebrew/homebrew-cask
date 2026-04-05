cask "supernotes" do
  arch arm: "-arm64"

  version "3.2.3"
  sha256 arm:   "5f4ff13ad1f7e977115a1e305323363fa148fc26b64bcb1dfc30a2edf957f22a",
         intel: "6f9fdf1f18fbcef52103a607f19f906a6cdcbb4f8a9d0367938e6d8e5ddf007f"

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
