cask "kite" do
  version "0.20201221.0"
  sha256 "5193460f47ef26c5d5d825890bf14d16c6fea9b4e1ddf8b9b272712e6b50d2e7"

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
