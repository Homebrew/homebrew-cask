cask 'endicia' do
  version '2.19,757'
  sha256 '12513f18b1aabce6ba9c5014b05b1aed5a2ea5be8d4f8e012cb34c3d65077f17'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.before_comma.no_dots}v#{version.after_comma}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml'
  name 'Endicia for Mac'
  homepage 'https://endiciaformac.com/'

  app 'Endicia.app'
end
