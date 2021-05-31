cask "gdlauncher" do
  version "1.1.7"
  sha256 "c6f516beef860a5dfc4c707ba85e4943c88b5f7ce6d7d7a9396f0fae978b77aa"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
