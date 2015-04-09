cask :v1 => 'gnucash' do
  version '2.6.6-4'
  sha256 '2dceb6ed0281018f467d69cdc19b98078ec90794b17b4c457b29d93e02ca0152'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/gnucash/Gnucash-Intel-#{version}.dmg"
  name 'GnuCash'
  homepage 'http://www.gnucash.org'
  license :gpl

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
