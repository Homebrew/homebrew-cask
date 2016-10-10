cask 'frizzix' do
  version '1.6.24'
  sha256 '92d4555e0029251fb023a3dbe9ae4b7d826b2eb6c21cf028f13fb7e5a8f6dfcb'

  url "http://frizzix.de/downloads/Frizzix_#{version}.dmg"
  appcast 'http://frizzix.de/downloads/FrizzixUpdate.xml',
          checkpoint: '1e452fb9339f33941d46d3195b9d8b4a2e90c2ccd63d42fcbf303151247175f4'
  name 'Frizzix'
  homepage 'http://mac.frizzix.de/'

  app 'Frizzix.app'
end
