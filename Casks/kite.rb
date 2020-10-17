cask "kite" do
  version "0.20201014.0"
  sha256 "f92e994c0451b55e7c62bc503b55e0036ac20169227a8b77343ab3f786dd2d52"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
