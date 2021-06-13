cask "gdlauncher" do
  version "1.1.10"
  sha256 "8bc79d7d799715f94e8a662f4a41f27b5d75777677b52a2d5daddfa4c476738c"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
