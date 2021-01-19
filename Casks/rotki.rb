cask "rotki" do
  version "1.12.2"
  sha256 "fdde3a6c61e7bd8b0a0a84d088402aa9c8d5d15b17f2bd7fcdb75267066ecec9"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
