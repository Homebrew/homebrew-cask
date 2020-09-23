cask "kite" do
  version "0.20200922.0"
  sha256 "760b40c8633bd4cf661d2e513d61b67434b22149340e4ff20fe4eba022651831"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
