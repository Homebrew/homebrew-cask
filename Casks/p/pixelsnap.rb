cask "pixelsnap" do
  version "2.6"
  sha256 "60262e2e1144182ee997da338be0d2337bb702319e74caffbc1d675d44bd0764"

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
  depends_on macos: ">= :high_sierra"

  app "PixelSnap #{version.major}.app"

  uninstall quit: "pl.maketheweb.pixelsnap2"

  zap trash: [
    "~/Library/Application Support/PixelSnap",
    "~/Library/Caches/pl.maketheweb.pixelsnap2",
    "~/Library/Caches/SentryCrash/PixelSnap 2",
    "~/Library/Preferences/pl.maketheweb.pixelsnap2.plist",
  ]
end
