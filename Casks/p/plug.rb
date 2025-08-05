cask "plug" do
  version "2.0.19,2067"
  sha256 "418d1adcf0ca099e7d02f9773df133c8c3276f1e65c47ff60f587861fa07d063"

  url "https://www.plugformac.com/updates/plug#{version.major}/Plug-latest.dmg"
  name "Plug"
  desc "Music player for The Hype Machine"
  homepage "https://www.plugformac.com/"

  livecheck do
    url "https://www.plugformac.com/updates/plug#{version.major}/sparklecast.xml"
    strategy :sparkle do |item|
      "#{item.short_version.delete_prefix("Version ")},#{item.version}"
    end
  end

  app "Plug.app"

  zap trash: [
    "~/Library/Application Support/com.plug.Plug2",
    "~/Library/Caches/com.plug.Plug2",
    "~/Library/Preferences/com.plug.Plug2.plist",
  ]

  caveats do
    requires_rosetta
  end
end
