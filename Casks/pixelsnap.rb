cask "pixelsnap" do
  version "2.3.4"
  sha256 "3e509e78e328dac3f0e7d663623a7a875fe3bc2cf4aa723bf15c93c03300ddd5"

  url "https://updates.getpixelsnap.com/v#{version.major}/PixelSnap-#{version.major}-#{version}.dmg"
  appcast "https://updates.getpixelsnap.com/v#{version.major}/appcast.xml"
  name "PixelSnap"
  homepage "https://getpixelsnap.com/"

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
