cask "kite" do
  version "0.20201214.0"
  sha256 "33f936937c580c4c1e76a9c460cc7a0500a0c5833dbb3a92e2857f5d4ae1a7fb"

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
