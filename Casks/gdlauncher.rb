cask "gdlauncher" do
  version "1.1.20"
  sha256 "fbabd716b486e9eae1da5cf963d7018abacb4ccf8a4196888aceee87333f91a5"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
