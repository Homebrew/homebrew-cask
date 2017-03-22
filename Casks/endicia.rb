cask 'endicia' do
  version '2.17v738'
  sha256 'a0dbe49e53494d451caef05701e445b9dd0454f45faf293fe54ce1feead913da'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.no_dots}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml',
          checkpoint: 'c9dad58a13861de3cebc56dfc6a332dcf2c77cb32ef449464beff3d7573c0517'
  name 'Endicia for Mac'
  homepage 'https://endiciaformac.com/'

  app 'Endicia.app'
end
