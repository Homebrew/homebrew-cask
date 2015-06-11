cask :v1 => 'kaleidoscope' do
  version '2.1.1-219'
  sha256 '660b105e03391e93a8dffe584cd5b26326b431786adcbaabbb60aa00afc5c8c7'

  url "http://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=ks',
          :sha256 => '0c1806533b06d08715959141f202ccf2bc30a12637dd71eef70c2552b6f18b09'
  name 'Kaleidoscope'
  homepage 'http://www.kaleidoscopeapp.com/'
  license :commercial

  app 'Kaleidoscope.app'
  binary 'Kaleidoscope.app/Contents/Resources/bin/ksdiff'

  postflight do
    suppress_move_to_applications
  end

  caveats do
    files_in_usr_local
  end

  zap :delete => [
                  '~/Library/Application Support/Kaleidoscope',
                  '~/Library/Caches/com.blackpixel.kaleidoscope',
                  '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope',
                  '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope/queued_reports',
                  '~/Library/Preferences/com.blackpixel.kaleidoscope.plist',
                  '~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState',
                 ]
end
