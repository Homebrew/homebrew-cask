cask :v1 => 'gnucash' do
  version '2.6.6-5'
  sha256 'c0ac1ea91e1a71519d8a4664190b8e4c7b0af60cb68a610f7ce7de30e3feaed8'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/gnucash/Gnucash-Intel-#{version}.dmg"
  name 'GnuCash'
  homepage 'http://www.gnucash.org'
  license :gpl

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
