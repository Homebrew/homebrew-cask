cask "kite" do
  version "0.20201001.0"
  sha256 "f7362849ffbb51509c10864d4074fbdb4f557e14898de44f81b4b2d6d2bc68af"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
