cask "kite" do
  version "0.20201107.0"
  sha256 "e81e4f142bfbc89176db1b852b6cda9ac2ed88912d335c11677e381ff37b8148"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
