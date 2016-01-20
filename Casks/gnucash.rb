cask 'gnucash' do
  version '2.6.11-1'
  sha256 'ae6b90d1cc1335d80d577c72abb97f5ef436d6bc807bb43a078c895e2320faa8'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/gnucash/gnucash%20(stable)/#{version[%r{[^-]+}]}/Gnucash-Intel-#{version}.dmg"
  name 'GnuCash'
  homepage 'http://www.gnucash.org'
  license :gpl

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
