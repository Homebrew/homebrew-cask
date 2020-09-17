cask "pixelsnap" do
  version "2.4"
  sha256 "801db8d629d04f47278eb29cdb95219273995d711cdf60443d1031f73b39a13d"

  url "https://updates.getpixelsnap.com/v#{version.major}/PixelSnap-#{version.major}-#{version}.dmg"
  appcast "https://updates.getpixelsnap.com/v#{version.major}/appcast.xml"
  name "PixelSnap"
  desc "Screen measuring tool"
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
