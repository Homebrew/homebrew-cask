cask "lbry" do
  version "0.49.1"
  sha256 "ba9b9aadc3bd0a19997b6b1afa5805a914c1a6b9f4ede9ac52973ca989c57a86"

  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg",
      verified: "github.com/lbryio/lbry-desktop/"
  appcast "https://github.com/lbryio/lbry-desktop/releases.atom"
  name "LBRY"
  homepage "https://lbry.com/"

  app "LBRY.app"
end
