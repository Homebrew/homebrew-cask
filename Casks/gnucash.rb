cask 'gnucash' do
  version '2.6.11-1'
  sha256 'ae6b90d1cc1335d80d577c72abb97f5ef436d6bc807bb43a078c895e2320faa8'

  # github.com/Gnucash/gnucash was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.major_minor_patch}/Gnucash-Intel-#{version}.dmg"
  appcast 'https://github.com/Gnucash/gnucash/releases.atom',
          checkpoint: 'ad61adf0b88e7402f9acaf7192885b5ec600c3f0c57af97909fcf65dbb99491b'
  name 'GnuCash'
  homepage 'http://www.gnucash.org'
  license :gpl

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'
end
