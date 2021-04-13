cask "rotki" do
  version "1.15.2"
  sha256 "5f73ed68c9414ccd7e8b1f2e6237da66667aa083a3ffe4aae1a2b544e413aed5"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
