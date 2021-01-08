cask "macbreakz" do
  version "5.42"
  sha256 "dd16318c25da75046e2ba84f8f509af453aa16575f7745b72d037275074285e4"

  url "https://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  name "MacBreakZ"
  homepage "https://www.publicspace.net/MacBreakZ/"

  livecheck do
    url "https://www.publicspace.net/app/signed_mb#{version.major}.xml"
    strategy :sparkle
  end

  app "MacBreakZ #{version.major}.app"
end
