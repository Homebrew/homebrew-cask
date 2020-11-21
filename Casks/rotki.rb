cask "rotki" do
  version "1.9.0"
  sha256 "cbe805f7d245d77f583d75c91969025b590efc46c3d1c043e518e732e6727da8"

  # github.com/rotki/rotki/ was verified as official when first introduced to the cask
  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
