cask "pixelsnap" do
  version "2.4.3"
  sha256 "5a01820c1163cab3b5625cdeee09e84c52d07b6e3171bfb1234fea786750f16f"

  url "https://updates.getpixelsnap.com/v#{version.major}/PixelSnap-#{version.major}-#{version}.dmg"
  name "PixelSnap"
  desc "Screen measuring tool"
  homepage "https://getpixelsnap.com/"

  livecheck do
    url "https://updates.getpixelsnap.com/v#{version.major}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "PixelSnap #{version.major}.app"

  uninstall quit: "pl.maketheweb.pixelsnap2"

  zap trash: [
    "~/Library/Application Support/PixelSnap",
    "~/Library/Caches/SentryCrash/PixelSnap 2",
    "~/Library/Caches/pl.maketheweb.pixelsnap2",
    "~/Library/Preferences/pl.maketheweb.pixelsnap2.plist",
  ]
end
