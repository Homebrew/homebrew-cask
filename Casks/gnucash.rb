class Gnucash < Cask
  version '2.6.4-4'
  sha256 'd80385c30f7e647b6f8af711cf9f34cd1de8c7dc49794f94d15aa63d82cefc56'

  url "https://downloads.sourceforge.net/sourceforge/gnucash/Gnucash-Intel-#{version}.dmg"
  homepage 'http://www.gnucash.org'

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
