cask "supernotes" do
  arch arm: "-arm64"

  version "3.1.5"
  sha256 arm:   "04532070c84778370e94ac8fcaa87a1becfd3762e9e8e4d3d97358fccbe2afa8",
         intel: "f6529406bb8204b4327bc5296664999b99d2c1e7d1b621c1f8518e000ae3e811"

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
