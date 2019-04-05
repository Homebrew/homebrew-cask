cask 'endicia' do
  version '2.19.1,763'
  sha256 '28c3ecf697f98381a268d42ad2952a5b943bfced4af417cf337790e8afc194df'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.before_comma.no_dots}v#{version.after_comma}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml'
  name 'Endicia for Mac'
  homepage 'https://endiciaformac.com/'

  app 'Endicia.app'
end
