cask :v1 => 'gnucash' do
  version '2.6.9-1'
  sha256 'f3b7d875d15dbaff4f903b571f0ca44a73aa5cbf741f0f087cb3bbb444c93eeb'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/gnucash/gnucash%20(stable)/#{version[/[^-]+/]}/Gnucash-Intel-#{version}.dmg"
  name 'GnuCash'
  homepage 'http://www.gnucash.org'
  license :gpl

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
