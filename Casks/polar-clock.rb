cask 'polar-clock' do
  version '3.0'
  sha256 '3260e4bfb6ecd2ffe0267d11b65e7698773f0d12b8480dcd8aedafa30762e853'

  url "http://blog.pixelbreaker.com/downloads/polarclock/PolarClock#{version.major}_osx_snow_leopard.zip"
  name 'PolarClock Screensaver'
  homepage 'http://blog.pixelbreaker.com/polarclock'

  screen_saver "PolarClock #{version}.saver"
end
