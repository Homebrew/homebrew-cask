cask "kite" do
  version "0.20210610.0"
  sha256 "a72a98e77c5d3410f8d92e2bb1458afa5d4edd51a021491f8f6f2d5995170914"

  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg",
      verified: "draqv87tt43s0.cloudfront.net/"
  name "Kite"
  desc "Add code completions to all your code editors"
  homepage "https://kite.com/"

  livecheck do
    url "https://release.kite.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Kite.app"
end
