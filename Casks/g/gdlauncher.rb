cask "gdlauncher" do
  version "1.1.30"
  sha256 "d98a89f76047cef4ca7bdd99fe464f09fbe95c3ae916123ae4179dd8368514b9"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"

  zap trash: [
    "~/Library/Application Support/gdlauncher",
    "~/Library/Application Support/gdlauncher_next",
    "~/Library/Logs/gdlauncher",
    "~/Library/Preferences/org.gorilladevs.GDLauncher.plist",
    "~/Library/Saved Application State/org.gorilladevs.GDLauncher.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
