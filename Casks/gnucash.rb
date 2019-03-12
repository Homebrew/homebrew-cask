cask 'gnucash' do
  version '3.4-1'
  sha256 '359d3ecbfc2143fe11901bd0319a60c5b802a8c13206c4da0041e510b7d39d59'

  # github.com/Gnucash/gnucash was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.major_minor_patch}/Gnucash-Intel-#{version}.dmg"
  appcast 'https://github.com/Gnucash/gnucash/releases.atom'
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
