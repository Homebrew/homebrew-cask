cask 'gnucash' do
  version '2.7.1'
  sha256 'e3f712cee91716da16a0f994db626ed134eb9d8a7e36a25a55d4f6edd51ab219'

  # github.com/Gnucash/gnucash was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version}/Gnucash-Intel-#{version}-1.dmg"
  appcast 'https://github.com/Gnucash/gnucash/releases.atom',
          checkpoint: '5f3e9e9dca2bfbd983a0fe6dfd140e6f2e8bc979425f05f033349031d808d7e4'
  name 'GnuCash'
  homepage 'https://www.gnucash.org/'

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'

  zap delete: '~/Library/Saved Application State/org.gnucash.Gnucash.savedState',
      trash:  [
                '~/Library/Application Support/Gnucash',
                '~/Library/Preferences/org.gnucash.Gnucash.plist',
              ]
end
