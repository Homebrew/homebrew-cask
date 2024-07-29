cask "supernotes" do
  arch arm: "-arm64"

  version "3.1.4"
  sha256 arm:   "68037db0f70d5a6164829b57d63252caf9df6f3d3148994bac8fa2a056fe5b71",
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
