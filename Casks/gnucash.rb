cask :v1 => 'gnucash' do
  version '2.6.5-3'
  sha256 'ed48b381c851446b2f43762a7a0ba833dc90052ce0623cc531ea94794b46f7f4'

  url "http://downloads.sourceforge.net/sourceforge/gnucash/Gnucash-Intel-#{version}.dmg"
  homepage 'http://www.gnucash.org'
  license :oss

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
