cask "kaleidoscope" do
  version "2.3.5,1445-jan-8-2021"
  sha256 "1a9b701d8ded947624d68c9ebfed1fad4846b117dde87a09567afcae859c0e62"

  url "https://updates.kaleidoscope.app/v2/prod/Kaleidoscope-#{version.before_comma}-build-#{version.after_comma}.app.zip",
      verified: "updates.kaleidoscope.app/"
  appcast "https://updates.kaleidoscope.app/v2/prod/appcast"
  name "Kaleidoscope"
  desc "Spots differences in text and image files"
  homepage "https://www.kaleidoscopeapp.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

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
