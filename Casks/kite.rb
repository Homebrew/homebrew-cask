cask "kite" do
  version "0.20210128.0"
  sha256 "508ed5ffcd07431ae883584dfac031e37593777ae9dc04d24b72918bca0131fc"

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
