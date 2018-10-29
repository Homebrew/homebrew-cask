cask 'endicia' do
  version '2.18.4,753'
  sha256 '55095e6388c80ab65651ff875d952a55b3fab2f26a7901a2d3e316eaf70282b5'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.before_comma.no_dots}v#{version.after_comma}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml'
  name 'Endicia for Mac'
  homepage 'https://endiciaformac.com/'

  app 'Endicia.app'
end
