cask "lbry" do
  version "0.47.2"
  sha256 "03be01caa453a001f2fc9daf96dca958f7bc752a4dc5f5aa729ad64297e45d11"

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast "https://github.com/lbryio/lbry-desktop/releases.atom"
  name "LBRY"
  homepage "https://lbry.com/"

  app "LBRY.app"
end
