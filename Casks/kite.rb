cask "kite" do
  version "0.20200825.0"
  sha256 "f190154ce6807d034c0340b2018bb08f889f89c0e59ef16d56a1abd3aa82ceaf"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
