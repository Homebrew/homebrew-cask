cask "pixelsnap" do
  version "2.6.2"
  sha256 "2b0b4934523fadb58e5ccb7214325cee19008ec044f36ebab88e8a75787a7ded"

  url "https://updates.getpixelsnap.com/v#{version.major}/PixelSnap-#{version.major}-#{version}.dmg",
      verified: "updates.getpixelsnap.com/"
  name "PixelSnap"
  desc "Screen measuring tool"
  homepage "https://pixelsnap.com/"

  livecheck do
    url "https://updates.getpixelsnap.com/v#{version.major}/appcast.xml"
    strategy :sparkle do |items|
      items.map do |item|
        next if item.version.blank?

        item.version
      end
    end
  end

  auto_updates true

  app "PixelSnap #{version.major}.app"

  uninstall quit: "pl.maketheweb.pixelsnap2"

  zap trash: [
    "~/Library/Application Support/PixelSnap",
    "~/Library/Caches/pl.maketheweb.pixelsnap2",
    "~/Library/Caches/SentryCrash/PixelSnap 2",
    "~/Library/Preferences/pl.maketheweb.pixelsnap2.plist",
  ]
end
