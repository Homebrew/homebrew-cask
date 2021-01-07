cask "rotki" do
  version "1.11.0"
  sha256 "2304a14d6c2c3c086a5752e471f5b1e47f52f76d270c48c639f0f5f2f302ad32"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
