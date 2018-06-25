cask 'nzbvortex' do
  version '3.4.3'
  sha256 'fe3831f4a610435e404ce5dc7631d6ed981b5533a9fcd73b3cae0a28af9e2f29'

  url "https://www.nzbvortex.com/downloads/NZBVortex-#{version}.zip"
  appcast "https://www.nzbvortex.com/update/appcast_v#{version.major}.xml"
  name 'NZBVortex'
  homepage 'https://www.nzbvortex.com/landing/'

  app "NZBVortex #{version.major}.app"
end
