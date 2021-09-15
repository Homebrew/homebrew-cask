cask "gdlauncher" do
  version "1.1.14"
  sha256 "daec03b6f6976cedb9939c6e6e2eff542c9ebca640d58efc4bb52895752d67ed"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
