cask "kite" do
  version "0.20201112.1"
  sha256 "6247dca3d13e630e1d7cf0d8c65133a17fab7d32bcbab8dac534b9a62d8ff809"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
