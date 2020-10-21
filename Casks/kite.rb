cask "kite" do
  version "0.20201019.3"
  sha256 "00efdb53d834f306ec3b3d023909e97ead03168f77a2226fcd50ed68123b57be"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
