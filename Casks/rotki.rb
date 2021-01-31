cask "rotki" do
  version "1.13.0"
  sha256 "d1e4838bcd36eca6103953eb4e97fc03d1f4bec8ff6f12de5b000b2f127199d0"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
