cask "kaleidoscope" do
  version "2.3.4,1444-nov-6-2020"
  sha256 "8dd95241d5ee02674c78bc7a4b2dc19adbb81c6db16d1d59dc5c9cf9440891fd"

  # updates.kaleidoscope.app/ was verified as official when first introduced to the cask
  url "https://updates.kaleidoscope.app/v2/prod/Kaleidoscope-#{version.before_comma}-build-#{version.after_comma}.app.zip"
  appcast "https://appcasts.hypergiant.com/ks/prod/updates"
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
