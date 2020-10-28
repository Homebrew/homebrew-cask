cask "rotki" do
  version "1.8.2"
  sha256 "4f4173c2a10483cd68333cea2c9c899ece8c7c0f24fea419e90a5b1d60716a08"

  # github.com/rotki/rotki/ was verified as official when first introduced to the cask
  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
