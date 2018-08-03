cask 'dymo-stamps' do
  version '2.18.3v752'
  sha256 'c124cc9afa96df68c0c880e7bf20cda844be439df17d8ecbea81a44e56403c28'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.no_dots}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml'
  name 'Dymo Stamps'
  homepage 'http://mac.endicia.com/stamps/'

  depends_on cask: 'dymo-label'

  app 'DYMO Stamps.app'
end
