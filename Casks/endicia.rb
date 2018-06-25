cask 'endicia' do
  version '2.18.2,750'
  sha256 '6331785174da80eaeb68b7451d12fa883c2bd70a796ce754e155fcf26ffc1892'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.before_comma.no_dots}v#{version.after_comma}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml'
  name 'Endicia for Mac'
  homepage 'https://endiciaformac.com/'

  app 'Endicia.app'
end
