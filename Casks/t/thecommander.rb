cask "thecommander" do
  version "1.10.4"
  sha256 "48f7ef5ba61ee710f3bc181ca93b038a8e91e473e67f53f07afec30d9513185f"

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
