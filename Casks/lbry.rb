cask "lbry" do
  version "0.48.2"
  sha256 "1915faacab888123ade4cf6816b6f1f0e3a0134079818cabf2560eb1b0875754"

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast "https://github.com/lbryio/lbry-desktop/releases.atom"
  name "LBRY"
  homepage "https://lbry.com/"

  app "LBRY.app"
end
