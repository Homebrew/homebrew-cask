cask "kite" do
  version "0.20200916.3"
  sha256 "46774ad17ba3ebc75fb41efcd6cc003d8078b4aae0283dde498b26a0db1ec6a7"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
