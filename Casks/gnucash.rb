cask 'gnucash' do
  version '2.6.12-2'
  sha256 '2f047eafdb5f4440c19a965f3bfab82c7d8035b38199def10e564c09176455d3'

  # github.com/Gnucash/gnucash was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.major_minor_patch}/Gnucash-Intel-#{version}.dmg"
  appcast 'https://github.com/Gnucash/gnucash/releases.atom',
          checkpoint: '64110b54aa4857625f99e48d306eff9c8c3fe2aa363ba64b6e84fe71a0245606'
  name 'GnuCash'
  homepage 'http://www.gnucash.org'
  license :gpl

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'

  zap delete: [
                '~/Library/Application Support/Gnucash',
                '~/Library/Preferences/org.gnucash.Gnucash.plist',
                '~/Library/Saved Application State/org.gnucash.Gnucash.savedState',
              ]
end
