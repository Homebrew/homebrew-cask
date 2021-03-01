cask "kite" do
  version "0.20210212.0"
  sha256 "420fabfdd09d3bf741d054ab47d7f2d80f9dd119328193ff8b47d212fdb59b49"

  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg",
      verified: "draqv87tt43s0.cloudfront.net/"
  name "Kite"
  homepage "https://kite.com/"

  livecheck do
    url "https://release.kite.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Kite.app"
end
