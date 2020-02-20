cask 'pixelsnap' do
  version '2.2.1'
  sha256 '19c5159640149845fef06adc493a8ac38b73295105dec680e264f4c821b9d23f'

  url "https://updates.getpixelsnap.com/v#{version.major}/PixelSnap-#{version.major}-#{version}.dmg"
  appcast "https://updates.getpixelsnap.com/v#{version.major}/appcast.xml"
  name 'PixelSnap'
  homepage 'https://getpixelsnap.com/'

  app "PixelSnap #{version.major}.app"
end
