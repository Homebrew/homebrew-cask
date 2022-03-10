cask "supernotes" do
  version "2.0.1"
  sha256 "4478dfc79801ec935f5ecdd7db7bfd1708cebbb959158d2af8bbd1352914d8a8"

  url "https://download.supernotes.app/desktop/Supernotes-#{version}.dmg"
  name "Supernotes"
  desc "Best collaborative note-taking app"
  homepage "https://supernotes.app/"

  livecheck do
    url "https://api.supernotes.app/v1/"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Supernotes.app"

  zap trash: [
    "~/Library/Application Support/Supernotes",
    "~/Library/Saved Application State/app.supernotes.SupernotesDesktop.savedState",
    "~/Library/Preferences/app.supernotes.SupernotesDesktop.plist",
  ]
end
