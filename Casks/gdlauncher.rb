cask "gdlauncher" do
  version "1.1.2"
  sha256 "7a20728ad2ecb5c2a33c33cf0b66427b213939a4ceeb0a1004a1cc70e5e3fe15"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
