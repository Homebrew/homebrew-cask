cask "thecommander" do
  version "1.0.56"
  sha256 "cd963c0a3057a58c86b4a7668f6304555db833ba4c7df34583405c06a605258a"

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
