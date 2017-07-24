cask 'mpv' do
  version '0.26.0'
  sha256 '0f3c7a2f8c0e37f8542a12170149ff9b9a462abd10e35fe6e88e689fe1815443'

  # laboratory.stolendata.net/~djinn/mpv_osx was verified as official when first introduced to the cask
  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz"
  appcast 'https://laboratory.stolendata.net/~djinn/mpv_osx/',
          checkpoint: 'd67d83f050d09749a8f92082f343d0f363e39b804ab0a590145dda170ea56d45'
  name 'mpv'
  homepage 'https://mpv.io/'

  app 'mpv.app'
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"
end
