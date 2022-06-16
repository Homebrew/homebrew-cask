cask "gdlauncher" do
  version "1.1.25"
  sha256 "f542be8565bc8bb76ea5797ec8e97abd59436a0cd1168c00b1069579c632eb21"

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
