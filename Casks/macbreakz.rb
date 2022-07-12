cask "macbreakz" do
  version "5.45"
  sha256 "044215deb84289095c015ba55dfdba93b3f0c2002103200cf41da77e4eccadc3"

  url "https://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  name "MacBreakZ"
  desc "Ergonomic Assistant to prevent health problems"
  homepage "https://www.publicspace.net/MacBreakZ/"

  livecheck do
    url "https://www.publicspace.net/app/signed_mb#{version.major}.xml"
    strategy :sparkle
  end

  app "MacBreakZ #{version.major}.app"

  zap trash: "~/Library/Caches/com.apple.helpd/Generated/MacBreakZ Help*#{version}"
end
