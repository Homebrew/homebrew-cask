cask "rotki" do
  version "1.9.1"
  sha256 "3568a2f4a41c4ecf4785e4f4aff17e15704e91ae859497edd85e0ac81138339f"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
