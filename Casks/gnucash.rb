cask 'gnucash' do
  version '2.6.14-1,a'
  sha256 '529525a883d57b3484e33997d751580d4038665718cd54b67a5595c1b32c5b17'

  # github.com/Gnucash/gnucash was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.major_minor_patch}#{version.after_comma}/Gnucash-Intel-#{version.before_comma}.dmg"
  appcast 'https://github.com/Gnucash/gnucash/releases.atom',
          checkpoint: 'db34621e345a2c5b1f34d81ed698449eb617cc344468045ec263fb792558716c'
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
