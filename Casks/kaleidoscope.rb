cask "kaleidoscope" do
  version "2.4,1450-feb-4-2021"
  sha256 "81afa75197f5190d15c1bb41fa8c883e71538bdbe7734d156aa9f0952f530677"

  url "https://updates.kaleidoscope.app/v2/prod/Kaleidoscope-#{version.before_comma}-#{version.after_comma}.app.zip",
      verified: "updates.kaleidoscope.app/"
  appcast "https://updates.kaleidoscope.app/v2/prod/appcast"
  name "Kaleidoscope"
  desc "Spots and merge differences in text and image files or folders."
  homepage "https://www.kaleidoscope.app"

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
