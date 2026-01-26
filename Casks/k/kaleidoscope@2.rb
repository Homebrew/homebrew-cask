cask "kaleidoscope@2" do
  version "2.4.5,1457,dec-20-2021"
  sha256 "bbe5afc9f9292309527b6149e832c85460624e330c0768cd706d0629e0755611"

  url "https://updates.kaleidoscope.app/v#{version.major}/prod/Kaleidoscope-#{version.tr(",", "-")}.app.zip"
  name "Kaleidoscope v2"
  desc "Spot and merge differences in text and image files or folders"
  homepage "https://kaleidoscope.app/"

  # Upstream also includes the newest version across all major versions, so we
  # have to omit items with a different major version.
  livecheck do
    url "https://updates.kaleidoscope.app/v#{version.major}/prod/appcast"
    regex(/Kaleidoscope[._-]v?(\d+(?:\.\d+)+)-(\d+)-(\w+(?:-\d+)*)\.app\.zip/i)
    strategy :sparkle do |items, regex|
      items.map do |item|
        next if item.short_version&.split(".")&.first != version.major

        match = item.url.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  auto_updates true
  conflicts_with cask: %w[
    kaleidoscope
    kaleidoscope@3
  ]

  app "Kaleidoscope.app"
  binary "#{appdir}/Kaleidoscope.app/Contents/Resources/bin/ksdiff"

  zap trash: [
    "~/Library/Application Support/com.blackpixel.kaleidoscope",
    "~/Library/Caches/com.blackpixel.kaleidoscope",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope",
    "~/Library/Preferences/com.blackpixel.kaleidoscope.plist",
    "~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
