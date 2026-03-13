cask "thecommander" do
  version "1.0.65"
  sha256 "e10228781705fa2e3a4a2efc1e2807b807468e90ef9b9048c3f58f37a27fa894"

  url "https://die-gutbrods.de/thecommander/updates/TheCommander-#{version}.dmg"
  name "TheCommander"
  desc "Dual-panel file manager inspired by Total Commander"
  homepage "https://die-gutbrods.de/thecommander/"

  livecheck do
    url "https://die-gutbrods.de/thecommander/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TheCommander.app"

  zap trash: [
    "~/Library/Application Support/de.die-gutbrods.TheCommander",
    "~/Library/Caches/de.die-gutbrods.TheCommander",
    "~/Library/HTTPStorages/de.die-gutbrods.TheCommander",
    "~/Library/Preferences/de.die-gutbrods.TheCommander.plist",
    "~/Library/Saved Application State/de.die-gutbrods.TheCommander.savedState",
  ]
end
