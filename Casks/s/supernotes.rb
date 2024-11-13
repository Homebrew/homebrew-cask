cask "supernotes" do
  arch arm: "-arm64"

  version "3.1.7"
  sha256 arm:   "f826e6115677754eece1092170c992e40c6a2624d004539fbc3b4dfe63e9720e",
         intel: "a821e106c437aef035683b34b96cef781de86154e81958028dd32579d588ecbb"

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
