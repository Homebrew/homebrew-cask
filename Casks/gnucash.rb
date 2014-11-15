cask :v1 => 'gnucash' do
  version '2.6.4-5'
  sha256 '8c9701cbc6acf191b682d80c5e2eedd5dc4099ccaacacef3f89cecd967ca8651'

  url "https://downloads.sourceforge.net/sourceforge/gnucash/Gnucash-Intel-#{version}.dmg"
  homepage 'http://www.gnucash.org'
  license :oss

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
