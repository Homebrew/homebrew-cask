cask "kite" do
  version "0.20210310.0"
  sha256 "5c9121a85fc8b2f494016667b42191c612e0b1074f71f3a78a0162ce3b126550"

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
