cask "gdlauncher" do
  version "1.1.18"
  sha256 "d46ef4f262c4dd254b31cb7d979d31f125523d50adc488031c73075e25dd8223"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
