cask "kaleidoscope" do
  version "2.3.1,1441-apr-7-2020"
  sha256 "720abc4bc1a5cdb0d58fb1794d16c9d4e00d82a570d428ff7b44e36fa45212bd"

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
