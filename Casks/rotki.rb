cask "rotki" do
  version "1.8.0"
  sha256 "2e4a94d8712c7d9e2ce5d2da3a7a880aa0d617992b9c06af736b86175a0613bb"

  # github.com/rotki/rotki/ was verified as official when first introduced to the cask
  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
