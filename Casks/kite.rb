cask "kite" do
  version "0.20210524.0"
  sha256 "f5276734f0d5e565dfe27112546960573d88a3a6e7a14080748579e7921499ef"

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
