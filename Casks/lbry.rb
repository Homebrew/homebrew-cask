cask "lbry" do
  version "0.48.1"
  sha256 "de804b3f39623bb972cac53c361d446c1303f76fb6e38828bc8ac0a9e5b5aa2e"

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast "https://github.com/lbryio/lbry-desktop/releases.atom"
  name "LBRY"
  homepage "https://lbry.com/"

  app "LBRY.app"
end
