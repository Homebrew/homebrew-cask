class Moneywell < Cask
  version '2.3.4'
  sha256 'f4b900576657c669a40481d7c2ad1ad6d48a4468d16963d4e9c8ddeca9c1548a'

  url 'http://downloads.nothirst.com/MoneyWell_23.zip'
  appcast 'http://nothirst.com/feeds/MoneyWell2Appcast.xml'
  homepage 'http://nothirst.com/moneywell/'

  app 'MoneyWell.app'
end
