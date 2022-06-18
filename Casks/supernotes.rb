cask "supernotes" do
  version "2.0.3"
  sha256 "e483f378afff188b08b5eb0e62de81642614bd78d00630ef2cea27a366619fe9"

  url "https://download.supernotes.app/Supernotes-#{version}.dmg"
  name "Supernotes"
  desc "Collaborative note-taking app"
  homepage "https://supernotes.app/"

  livecheck do
    url "https://api.supernotes.app/v1/"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Supernotes.app"

  zap trash: [
    "~/Library/Application Support/Supernotes",
    "~/Library/Preferences/app.supernotes.SupernotesDesktop.plist",
    "~/Library/Saved Application State/app.supernotes.SupernotesDesktop.savedState",
  ]
end
