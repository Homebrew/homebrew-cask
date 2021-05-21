cask "gdlauncher" do
  version "1.1.5"
  sha256 "38d1d4588d287bff4da69a6b2b9bdde7efecdb9180185db7ddae08a1e224aabf"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
