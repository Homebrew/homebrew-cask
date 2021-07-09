cask "rotki" do
  version "1.18.1"
  sha256 "354cfbdc96d2711af01f7a8161f5310d65286f3af1d3ecf2d1779575563af954"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
