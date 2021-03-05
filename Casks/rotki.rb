cask "rotki" do
  version "1.14.2"
  sha256 "a3956440d6d3813dcdc9e56d0debe401b7472ab8cde184b3c3f3b56a0474c758"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
