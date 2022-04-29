cask "supernotes" do
  version "2.0.2"
  sha256 "f55fc8a87e39241988a25735bf4ffec4a7dd38caf5bb6751bd5844dbe41fa19a"

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
