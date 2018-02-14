cask 'mpv' do
  version '0.28.1'
  sha256 'f37f57c3c34a33d842bff21cbffabe66c6c59ef36a81c8602ce262c040e41327'

  # laboratory.stolendata.net/~djinn/mpv_osx was verified as official when first introduced to the cask
  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz"
  appcast 'https://laboratory.stolendata.net/~djinn/mpv_osx/',
          checkpoint: '2c2fa3080c72e410023c673c8b4ca4b4c92b437b07ccae0754733703419c4c89'
  name 'mpv'
  homepage 'https://mpv.io/'

  app 'mpv.app'
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"

  zap trash: [
               '~/.config/mpv',
               '~/Library/Logs/mpv.log',
               '~/Library/Preferences/io.mpv.plist',
               '~/Library/Preferences/mpv.plist',
             ]
end
