cask "kite" do
  version "0.20210225.0"
  sha256 "25b28e2c66fe10efdf4de1fdba027e8474d38055cd4b8d3df52163876a4a1b35"

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
