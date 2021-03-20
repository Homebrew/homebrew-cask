cask "rotki" do
  version "1.15.1"
  sha256 "d049d655bf183b42af3a2eb2a2fed1ef132ed8368b73bd4d7462588d867ef056"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
