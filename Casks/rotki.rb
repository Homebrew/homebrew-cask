cask "rotki" do
  version "1.10.1"
  sha256 "637dd0d0f9e1e3c7361b095710ec7881b583f9a68416a9e19ffc9d6635b8b794"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
