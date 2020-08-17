cask "kite" do
  version "0.20200804.0"
  sha256 "68f033aa34dafe18edbf1b47563597603aba066cd73142eeea9b550b3eb6d6c8"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
