cask 'endicia' do
  version '2171v742'
  sha256 '0fd8d6a038d0ac03a258aa11cd3b4dfb8c68006eb4d69e5c0ada3219fe12b340'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.no_dots}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml',
          checkpoint: '67c9d689919f4690d1f007f3cbe0f59d9543562dc4a101685992c208ab11dff5'
  name 'Endicia for Mac'
  homepage 'https://endiciaformac.com/'

  app 'Endicia.app'
end
