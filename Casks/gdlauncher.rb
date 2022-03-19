cask "gdlauncher" do
  version "1.1.21"
  sha256 "fb320d32a739b4565520be8f98add8262a0bebbe17973cf3527b17ccdb53f8a7"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
