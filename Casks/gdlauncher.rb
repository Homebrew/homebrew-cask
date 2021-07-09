cask "gdlauncher" do
  version "1.1.11"
  sha256 "f5d0cb5987959aa593cf6e5e20ef187b6fedb3d6ceece5046ed109e724fbb082"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
