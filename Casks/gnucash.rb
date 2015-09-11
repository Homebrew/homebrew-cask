cask :v1 => 'gnucash' do
  version '2.6.7-1'
  sha256 'd0ed3339ac2f483219aab0b2c3317116b8ddb3a36e86722295899f2eeabbe74e'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/gnucash/Gnucash-Intel-#{version}.dmg"
  name 'GnuCash'
  homepage 'http://www.gnucash.org'
  license :gpl

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
