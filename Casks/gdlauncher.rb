cask "gdlauncher" do
  version "1.0.10"
  sha256 "66b54fae5fdc01fb8027e1f0fcdb0c8e441cf36d24eb74aa5adde168064866c1"

  # github.com/gorilla-devs/GDLauncher/ was verified as official when first introduced to the cask
  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg"
  appcast "https://github.com/gorilla-devs/GDLauncher/releases.atom"
  name "GDLauncher"
  desc "Custom Minecraft Launcher"
  homepage "https://gdevs.io/"

  app "GDLauncher.app"
end
