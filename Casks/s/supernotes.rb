cask "supernotes" do
  arch arm: "-arm64"

  version "3.1.6"
  sha256 arm:   "eaed43ea02d6a62e817c6d214993b35ead058f791a19ad0dc984941616243c85",
         intel: "01f51c61f52703d6dc58318f09d1e174e47c8d89147d66ef43c0284996efed06"

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
