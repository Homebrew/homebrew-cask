cask "rotki" do
  version "1.9.2"
  sha256 "c9aae4ed5057a974c6dd2e24f026fec3ba84a91e710495bbd53840938dc58281"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
