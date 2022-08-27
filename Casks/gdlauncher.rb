cask "gdlauncher" do
  version "1.1.28"
  sha256 "6d07c02d1e3d305ac05b3f905e01d14516bc11a36ad5c48ee7cc89afc5f44f40"

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
end
