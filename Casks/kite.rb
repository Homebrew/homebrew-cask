cask "kite" do
  version "0.20200910.0"
  sha256 "545671a9877ba772f14f88152e6d62e44939ea78944035eea0277f611c993442"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
