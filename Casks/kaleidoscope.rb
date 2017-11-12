cask 'kaleidoscope' do
  version '2.2.2-1376'
  sha256 '318ce7f2a32cb3330ada05f8099492e1ca5fe41d7b73ecbfd977845ebb5bc016'

  url "https://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=ks',
          checkpoint: '95b390ff5876bce7cd69f2117b2efa925caab3871b543a05416a2755408933d1'
  name 'Kaleidoscope'
  homepage 'https://www.kaleidoscopeapp.com/'

  auto_updates true

  app 'Kaleidoscope.app'
  binary "#{appdir}/Kaleidoscope.app/Contents/Resources/bin/ksdiff"

  zap delete: [
                '~/Library/Application Support/Kaleidoscope',
                '~/Library/Caches/com.blackpixel.kaleidoscope',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope/queued_reports',
                '~/Library/Preferences/com.blackpixel.kaleidoscope.plist',
                '~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState',
              ]
end
