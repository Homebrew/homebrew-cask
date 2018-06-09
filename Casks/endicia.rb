cask 'endicia' do
  version '2.18.2,750'
  sha256 '6331785174da80eaeb68b7451d12fa883c2bd70a796ce754e155fcf26ffc1892'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.before_comma.no_dots}v#{version.after_comma}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml',
          checkpoint: '6919823a9de15d0f7083ab56ac28c736eb0d3e7a3def53acbacc7484a3c2ad93'
  name 'Endicia for Mac'
  homepage 'https://endiciaformac.com/'

  app 'Endicia.app'
end
