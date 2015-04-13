cask :v1 => 'gnucash' do
  version '2.6.6-5'
  sha256 'fa4f240d2ad9266038c360f5a2cfc1c492425cca3fcfa82e19820e5cb7b590f5'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/gnucash/Gnucash-Intel-#{version}.dmg"
  name 'GnuCash'
  homepage 'http://www.gnucash.org'
  license :gpl

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
