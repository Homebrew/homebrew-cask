cask 'kaleidoscope' do
  version '2.2.0-439'
  sha256 'a9f3d6914a17e085c5e668675b945fc227c4afc67ce8dddb24de0166b17cfaed'

  url "https://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=ks',
          checkpoint: '3565966f6ee7e103dde711452d37b1269dff83857371e3566cd04d3d3fd8b917'
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
