cask "macbreakz" do
  version "5.46"
  sha256 "99dd94c7708ff627ce9fe67b39cab8b85ba7df3021aafa7a24c30c873a38eb42"

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
