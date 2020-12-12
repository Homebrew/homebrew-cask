cask "lbry" do
  version "0.49.0"
  sha256 "d86bb6c46c77438d7ba718cb7158432f06e93eb41802c71cf2aa4faea4e1115c"

  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg",
      verified: "github.com/lbryio/lbry-desktop/"
  appcast "https://github.com/lbryio/lbry-desktop/releases.atom"
  name "LBRY"
  homepage "https://lbry.com/"

  app "LBRY.app"
end
