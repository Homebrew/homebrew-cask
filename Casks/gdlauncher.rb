cask "gdlauncher" do
  version "1.1.17"
  sha256 "c81075f52b3cc2f0322bcc73ac3a1887cea4fd34495b16b0febde70f4d400a4a"

  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg",
      verified: "github.com/gorilla-devs/GDLauncher/"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
