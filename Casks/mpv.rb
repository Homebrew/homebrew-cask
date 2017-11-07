cask 'mpv' do
  version '0.27.0'
  sha256 '5e4bf23c59dfe0c2e48e6e67f695ace93a38bbb6361f53cfd37d32f5ce1c2c41'

  # laboratory.stolendata.net/~djinn/mpv_osx was verified as official when first introduced to the cask
  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz"
  appcast 'https://laboratory.stolendata.net/~djinn/mpv_osx/',
          checkpoint: '4b64933554b8bd0da096fcc602f2ac9048bf8caa2bfe64f51ff161f1a323d040'
  name 'mpv'
  homepage 'https://mpv.io/'

  app 'mpv.app'
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"

  zap delete: '~/Library/Logs/mpv.log',
      trash:  [
                '~/.config/mpv',
                '~/Library/Preferences/io.mpv.plist',
              ]
end
