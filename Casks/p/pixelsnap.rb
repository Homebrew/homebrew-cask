cask "pixelsnap" do
  version "2.6.1"
  sha256 "248e903546d09f9d0388f8ddf720f0becbe14ea64a3f00bf61c5490069ee023c"

  url "https://updates.getpixelsnap.com/v#{version.major}/PixelSnap-#{version.major}-#{version}.dmg"
  name "PixelSnap"
  desc "Screen measuring tool"
  homepage "https://getpixelsnap.com/"

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
  depends_on macos: ">= :mojave"

  app "PixelSnap #{version.major}.app"

  uninstall quit: "pl.maketheweb.pixelsnap2"

  zap trash: [
    "~/Library/Application Support/PixelSnap",
    "~/Library/Caches/pl.maketheweb.pixelsnap2",
    "~/Library/Caches/SentryCrash/PixelSnap 2",
    "~/Library/Preferences/pl.maketheweb.pixelsnap2.plist",
  ]
end
