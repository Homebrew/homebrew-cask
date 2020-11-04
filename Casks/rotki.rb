cask "rotki" do
  version "1.8.3"
  sha256 "98982adc36d0723c09465735f601a006e91a099e72aedca42b255002b32b6850"

  # github.com/rotki/rotki/ was verified as official when first introduced to the cask
  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
