cask "supernotes" do
  arch arm: "-arm64"

  version "3.2.4"
  sha256 arm:   "c58f92f63b5282382e2af9317cc001064662fb14dc2c8343f1e331c0c5677230",
         intel: "54f982a17d97df10656d6ffc97d72a88ddf80caf5a62e08ab6b2c68c7b005d97"

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
