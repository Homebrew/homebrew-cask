cask 'mpv' do
  version '0.25.0'
  sha256 '66d6cd73bd95f588fecf4ea1ae6cc34fc74add9f1bd813dbfb56f53dc4f3dcfc'

  # laboratory.stolendata.net/~djinn/mpv_osx was verified as official when first introduced to the cask
  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz"
  appcast 'https://laboratory.stolendata.net/~djinn/mpv_osx/',
          checkpoint: '7a6ff328b8b173398ec90780b45f479431fc4a614242c78b1a617dae935c2654'
  name 'mpv'
  homepage 'https://mpv.io/'

  app 'mpv.app'
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"
end
