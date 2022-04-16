cask "pixelsnap" do
  version "2.5.1"
  sha256 "20036e0b4936991422356333c05bf70422d6c18abfbcf9efce8803e8f0481095"

  url "https://updates.getpixelsnap.com/v#{version.major}/PixelSnap-#{version.major}-#{version}.dmg"
  name "PixelSnap"
  desc "Screen measuring tool"
  homepage "https://getpixelsnap.com/"

  livecheck do
    url "https://updates.getpixelsnap.com/v#{version.major}/appcast.xml"
    regex(/sparkle:version="(\d+(?:\.\d+)+)"/i)
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
