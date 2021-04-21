cask "macbreakz" do
  version "5.44"
  sha256 "6e22b2105adac3f9b935d6066212f140cd2874f0e473ea2ce0b9078b889d13ae"

  url "https://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  name "MacBreakZ"
  homepage "https://www.publicspace.net/MacBreakZ/"

  livecheck do
    url "https://www.publicspace.net/app/signed_mb#{version.major}.xml"
    strategy :sparkle
  end

  app "MacBreakZ #{version.major}.app"
end
