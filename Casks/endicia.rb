cask 'endicia' do
  version '2.18.3,752'
  sha256 'c124cc9afa96df68c0c880e7bf20cda844be439df17d8ecbea81a44e56403c28'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.before_comma.no_dots}v#{version.after_comma}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml'
  name 'Endicia for Mac'
  homepage 'https://endiciaformac.com/'

  app 'Endicia.app'
end
