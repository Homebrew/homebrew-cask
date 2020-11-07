cask "kaleidoscope" do
  version "2.3.4,1444-nov-6-2020"
  sha256 "5d488be4aef2a46108832b625e07711eca5efab926926022f75956702d301b10"

  # appcasts.hypergiant.com/ks/prod/ was verified as official when first introduced to the cask
  url "https://appcasts.hypergiant.com/ks/prod/Kaleidoscope-#{version.before_comma}-build-#{version.after_comma}.zip"
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
