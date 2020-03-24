cask 'pixelsnap' do
  version '2.2.3'
  sha256 '128964352c230184701ffe8b2ca9ab0d6f1ac9c3a40e178ab04cad7d47da777e'

  url "https://updates.getpixelsnap.com/v#{version.major}/PixelSnap-#{version.major}-#{version}.dmg"
  appcast "https://updates.getpixelsnap.com/v#{version.major}/appcast.xml"
  name 'PixelSnap'
  homepage 'https://getpixelsnap.com/'

  app "PixelSnap #{version.major}.app"
end
