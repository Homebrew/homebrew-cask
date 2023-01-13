cask "pixelsnap" do
  version "2.5.3"
  sha256 "f8cfa8fe61ea4de058d5489138c91f65565a8110c14bbc83970f120feb75b0df"

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
