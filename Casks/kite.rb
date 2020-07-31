cask "kite" do
  version "0.20200728.0"
  sha256 "6fb38b8bc273a7e71dd6d638a7bfd9913dc1adb103d542cffc13e4ba5a9f5991"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
