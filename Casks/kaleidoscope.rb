cask 'kaleidoscope' do
  version '2.3,1438-feb-21-2020'
  sha256 '347d7fb5e36e0c50ffac56d99b3853b61cf2cf7ed82eb3f55768a2554f90d9a2'

  # appcasts.hypergiant.com/ks/prod was verified as official when first introduced to the cask
  url "https://appcasts.hypergiant.com/ks/prod/Kaleidoscope-#{version.before_comma}-build-#{version.after_comma}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=ks'
  name 'Kaleidoscope'
  homepage 'https://www.kaleidoscopeapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Kaleidoscope.app'
  binary "#{appdir}/Kaleidoscope.app/Contents/Resources/bin/ksdiff"

  zap trash: [
               '~/Library/Application Support/com.blackpixel.kaleidoscope',
               '~/Library/Caches/com.blackpixel.kaleidoscope',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope',
               '~/Library/Preferences/com.blackpixel.kaleidoscope.plist',
               '~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState',
             ]
end
