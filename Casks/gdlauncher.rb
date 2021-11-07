cask "gdlauncher" do
  version "1.1.15"
  sha256 "1b2ae2c0c16b7da6dc27bbc68fb31191e37b6b4517c5ded344ea3623dd7f5cb7"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
