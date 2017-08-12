cask 'kaleidoscope' do
  version '2.2.1-1158'
  sha256 '5c31bf6130edc6df84a2a6482718d598a23d5995dfac9c82b1bca2c25a6262a6'

  url "https://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=ks',
          checkpoint: '4c3a9669d41c0a644a6dde8da1ef1ebe08df45d260ef1a4641ac9aec8facacf1'
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
