cask 'pixelsnap' do
  version '2.3'
  sha256 '2fe48972f155ccf5943de4eee9de61f3a95f17913ab1bbaced09a120b711b40a'

  url "https://updates.getpixelsnap.com/v#{version.major}/PixelSnap-#{version.major}-#{version}.dmg"
  appcast "https://updates.getpixelsnap.com/v#{version.major}/appcast.xml"
  name 'PixelSnap'
  homepage 'https://getpixelsnap.com/'

  auto_updates true

  app "PixelSnap #{version.major}.app"
end
