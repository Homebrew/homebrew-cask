cask "rotki" do
  version "1.13.3"
  sha256 "2c5dd4d2807ea3d93ce28f349872bfc0fa660c859d2943c38c023bb051a053a2"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  appcast "https://github.com/rotki/rotki/releases.atom"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  app "rotki.app"
end
