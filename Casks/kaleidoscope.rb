cask "kaleidoscope" do
  version "2.4.1,1453:apr-6-2021"
  sha256 "f3cb0d9135fecb430c949bb6d2e53eacb6f7b81873b707fa021bd6ae1c16b1b9"

  url "https://updates.kaleidoscope.app/v2/prod/Kaleidoscope-#{version.before_comma}-#{version.after_comma.before_colon}-#{version.after_colon}.app.zip"
  name "Kaleidoscope"
  desc "Spot and merge differences in text and image files or folders"
  homepage "https://www.kaleidoscope.app/"

  livecheck do
    url "https://updates.kaleidoscope.app/v2/prod/appcast"
    strategy :sparkle do |item|
      match = item.url.match(%r{/Kaleidoscope-(\d+(?:\.\d+)*)-(\d+)-(\w+(?:-\d+)*)\.app\.zip}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Kaleidoscope.app"
  binary "#{appdir}/Kaleidoscope.app/Contents/Resources/bin/ksdiff"

  zap trash: [
    "~/Library/Application Support/com.blackpixel.kaleidoscope",
    "~/Library/Caches/com.blackpixel.kaleidoscope",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope",
    "~/Library/Preferences/com.blackpixel.kaleidoscope.plist",
    "~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState",
  ]
end
