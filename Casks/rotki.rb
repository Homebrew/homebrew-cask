cask "rotki" do
  version "1.14.1"
  sha256 "59f42a60d6f0a628f59524d2312a3d1b70c5d08089bf85ca40c7771dfdf3d9ec"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
