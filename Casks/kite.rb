cask "kite" do
  version "0.20210114.0"
  sha256 "43c5ea6f1df58b938f410a71606b40fb830a04a5f1c6cfa3d6f4a8d8aa075283"

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
