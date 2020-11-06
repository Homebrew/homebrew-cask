cask "axe-electrum" do
  version "3.3.8.9"
  sha256 "463fd763b86a15af90094d8ad88fd158ccab04439c8bc02c08bdc38f5c757fba"

  url "https://github.com/axerunners/electrum-axe/releases/download/#{version}/axe-electrum-#{version}-macosx.dmg"
  appcast "https://github.com/axerunners/electrum-axe/releases.atom"
  name "Axe Electrum"
  desc "Client for AXE network"
  homepage "https://github.com/axerunners/electrum-axe"

  app "Axe Electrum.app"
end
