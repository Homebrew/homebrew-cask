cask "thecommander" do
  version "1.8.0"
  sha256 "0476c112e16fdb99d456450388f584ffc6a1980aa06b3e43d96baeef91f06ceb"

  url "https://die-gutbrods.de/thecommander/updates/TheCommander-#{version}.dmg"
  name "TheCommander"
  desc "Dual-panel file manager inspired by Total Commander"
  homepage "https://die-gutbrods.de/thecommander/"

  livecheck do
    url "https://die-gutbrods.de/thecommander/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TheCommander.app"

  zap trash: [
    "~/Library/Application Support/de.die-gutbrods.TheCommander",
    "~/Library/Application Support/TheCommander",
    "~/Library/Caches/de.die-gutbrods.TheCommander",
    "~/Library/HTTPStorages/de.die-gutbrods.TheCommander",
    "~/Library/Preferences/de.die-gutbrods.TheCommander.plist",
    "~/Library/Saved Application State/de.die-gutbrods.TheCommander.savedState",
  ]
end
