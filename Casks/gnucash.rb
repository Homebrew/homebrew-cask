cask :v1 => 'gnucash' do
  version '2.6.5-6'
  sha256 '84a55674ef9a78b0aebf530017cca31204d1270110675c916bee0fb8d838030a'

  url "http://downloads.sourceforge.net/sourceforge/gnucash/Gnucash-Intel-#{version}.dmg"
  homepage 'http://www.gnucash.org'
  license :oss

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
