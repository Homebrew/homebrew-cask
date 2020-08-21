cask "kite" do
  version "0.20200813.0"
  sha256 "f73cd1976b6d382be858647d681979fac7f78c7ce5f39785307dab8d94625e75"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
