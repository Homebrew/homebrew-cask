cask "rotki" do
  version "1.15.0"
  sha256 "08553c4e2c3a03a7b442b2a9add60bc1d64c514f88c4413f7e0887015f367475"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
