cask 'kaleidoscope' do
  version '2.2.2-1376'
  sha256 '318ce7f2a32cb3330ada05f8099492e1ca5fe41d7b73ecbfd977845ebb5bc016'

  url "https://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-#{version}.zip"
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
