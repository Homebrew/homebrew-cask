cask "pixelsnap" do
  version "2.6.4"
  sha256 "0a3b1f964891900a2f7f7e6bd319651a1ed379275e7532bc32109a649fb6312d"

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
  depends_on :macos

  app "PixelSnap #{version.major}.app"

  uninstall quit: "pl.maketheweb.pixelsnap2"

  zap trash: [
    "~/Library/Application Support/PixelSnap",
    "~/Library/Caches/pl.maketheweb.pixelsnap2",
    "~/Library/Caches/SentryCrash/PixelSnap 2",
    "~/Library/Preferences/pl.maketheweb.pixelsnap2.plist",
  ]
end
