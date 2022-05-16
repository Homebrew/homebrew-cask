cask "gdlauncher" do
  version "1.1.23"
  sha256 "4910194889b5a192ab422a36c4d6e7c3eede19d8859eccf72e4bdc4e3b794936"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
