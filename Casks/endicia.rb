cask 'endicia' do
  version '218v746'
  sha256 '1d58d75fa2a72274592524a4e8024ca62ebac906fb8f01737688f9913cb3bcdb'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.no_dots}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml',
          checkpoint: '490b94eb283d756b51e3b09d226069ada7f463198a70fcf7e19a2627f00dbd8b'
  name 'Endicia for Mac'
  homepage 'https://endiciaformac.com/'

  app 'Endicia.app'
end
