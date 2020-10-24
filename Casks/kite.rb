cask "kite" do
  version "0.20201022.0"
  sha256 "8cf8a965ca4b55884d2adc5c0c6e7d30270c89e205e431c840ec313b71157f3a"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
