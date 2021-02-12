cask "rotki" do
  version "1.13.1"
  sha256 "db49dd0c5d3bb7ce9bfbc179a85adb192d32b7dac45e69db64955e255736e7f7"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
