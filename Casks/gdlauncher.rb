cask "gdlauncher" do
  version "1.0.9"
  sha256 "52ed0675753574b225f44d4aebe8967523590ca1dddf14ada7783dfb42034316"

  # github.com/gorilla-devs/GDLauncher/ was verified as official when first introduced to the cask
  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg"
  appcast "https://github.com/gorilla-devs/GDLauncher/releases.atom"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
