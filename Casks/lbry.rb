cask "lbry" do
  version "0.48.0"
  sha256 "842eaf179fa7c581ff8c8e1ee6d5bea890c03b3dbabb3022e0c5d837e6f7ade1"

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast "https://github.com/lbryio/lbry-desktop/releases.atom"
  name "LBRY"
  homepage "https://lbry.com/"

  app "LBRY.app"
end
