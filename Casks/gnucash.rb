cask 'gnucash' do
  version '2.6.13-1,a'
  sha256 '722182df86530337b98ff8876a1836b21ecaa5453646ad9e711b02592de1323b'

  # github.com/Gnucash/gnucash was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.major_minor_patch}#{version.after_comma}/Gnucash-Intel-#{version.before_comma}.dmg"
  appcast 'https://github.com/Gnucash/gnucash/releases.atom',
          checkpoint: '186ebe2f93a3a6f6a1673d0f0e597e5eda375e881b10d0121938d8e0007ddbed'
  name 'GnuCash'
  homepage 'https://www.gnucash.org/'
  license :gpl

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'

  zap delete: [
                '~/Library/Application Support/Gnucash',
                '~/Library/Preferences/org.gnucash.Gnucash.plist',
                '~/Library/Saved Application State/org.gnucash.Gnucash.savedState',
              ]
end
