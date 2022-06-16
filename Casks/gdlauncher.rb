cask "gdlauncher" do
  version "1.1.24"
  sha256 "9fe08dd65563ec9acdf6927ce65869a922ee6733d891b07462c662e4b573b6b6"

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
