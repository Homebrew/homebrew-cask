cask "kite" do
  version "0.20201026.1"
  sha256 "ce8f3b075f538bf915b9e94e36cf51ade8684da205e469e28c39d7276ae2073c"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
