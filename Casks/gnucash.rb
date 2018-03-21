cask 'gnucash' do
  version '2.6.19-1'
  sha256 'd40de55c75fdb754c717ae37e25de5e411fce4ce1f7684f071fc492f939408d2'

  # github.com/Gnucash/gnucash was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.major_minor_patch}/Gnucash-Intel-#{version}.dmg"
  appcast 'https://github.com/Gnucash/gnucash/releases.atom',
          checkpoint: '6735ed4e007673033c8c7d78eec7a76c7ab32ee57dc646f7d2662d89402688d6'
  name 'GnuCash'
  homepage 'https://www.gnucash.org/'

  app 'Gnucash.app'
  app 'FinanceQuote Update.app'

  zap trash: [
               '~/Library/Application Support/Gnucash',
               '~/Library/Preferences/org.gnucash.Gnucash.plist',
               '~/Library/Saved Application State/org.gnucash.Gnucash.savedState',
             ]
end
