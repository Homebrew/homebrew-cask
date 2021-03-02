cask "lbry" do
  version "0.49.4"
  sha256 "dba1adcc44c8548459e51ff690d67973215502fcf92623ee15cf2837f7f65989"

  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg",
      verified: "github.com/lbryio/lbry-desktop/"
  appcast "https://github.com/lbryio/lbry-desktop/releases.atom"
  name "LBRY"
  homepage "https://lbry.com/"

  app "LBRY.app"
end
