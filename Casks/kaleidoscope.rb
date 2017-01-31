cask 'kaleidoscope' do
  version '2.1.1-219'
  sha256 '660b105e03391e93a8dffe584cd5b26326b431786adcbaabbb60aa00afc5c8c7'

  url "https://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=ks',
          checkpoint: 'c49ed9d16dabc9279040e3891f727d8f0487b89ec9ef2df286ba684edde1352c'
  name 'Kaleidoscope'
  homepage 'http://www.kaleidoscopeapp.com/'

  auto_updates true

  app 'Kaleidoscope.app'
  binary "#{appdir}/Kaleidoscope.app/Contents/Resources/bin/ksdiff"

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Kaleidoscope',
                '~/Library/Caches/com.blackpixel.kaleidoscope',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope/queued_reports',
                '~/Library/Preferences/com.blackpixel.kaleidoscope.plist',
                '~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState',
              ]
end
