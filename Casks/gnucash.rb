cask 'gnucash' do
  version '2.6.10-1'
  sha256 '2c60050a9edc8337e06db871a330f51ad5e02495b30576f107abddd161736426'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/gnucash/gnucash%20(stable)/#{version[/[^-]+/]}/Gnucash-Intel-#{version}.dmg"
  name 'GnuCash'
  homepage 'http://www.gnucash.org'
  license :gpl

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
