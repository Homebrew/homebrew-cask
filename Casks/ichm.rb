class Ichm < Cask
  version '1.4.3'
  sha256 '2a00ab7fdfedd1dfea6a7a290af2eb791072812199e6d98cfdcafb9fd83e9697'

  url 'https://ichm.googlecode.com/files/iChm.1.4.3.zip'
  appcast 'http://www.robinlu.com/ichm/release.xml'
  homepage 'https://code.google.com/p/ichm/'

  app 'iChm.app'
end
