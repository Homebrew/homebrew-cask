cask "kite" do
  version "0.20201119.0"
  sha256 "edce06e35a1eadafe5799984ef7f3901f8e98c005a36a74d58e57eeb39e26f6a"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
