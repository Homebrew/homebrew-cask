cask 'gnucash' do
  version '2.6.16-1'
  sha256 'a1e0fe408b9bc34a9d7ecff1fdaf66846289032636e44b37f6ef18b71867aec8'

  # github.com/Gnucash/gnucash was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.major_minor_patch}/Gnucash-Intel-#{version}.dmg"
  appcast 'https://github.com/Gnucash/gnucash/releases.atom',
          checkpoint: '4dc7df87ea304f84d38f6df81fc229f8168ee07de5694b1c0ad63edf06b553cc'
  name 'GnuCash'
  homepage 'https://www.gnucash.org/'

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'

  zap delete: [
                '~/Library/Application Support/Gnucash',
                '~/Library/Preferences/org.gnucash.Gnucash.plist',
                '~/Library/Saved Application State/org.gnucash.Gnucash.savedState',
              ]
end
