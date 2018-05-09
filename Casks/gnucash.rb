cask 'gnucash' do
  version '3.1-2'
  sha256 '71d06ea408302defacf08dcc8343ade86eeb2298b8b33e75a6e240754c2faf71'

  # github.com/Gnucash/gnucash was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.major_minor_patch}/Gnucash-Intel-#{version}.dmg"
  appcast 'https://github.com/Gnucash/gnucash/releases.atom',
          checkpoint: '9c0f6151bee77f165cff37a5298b3a5f6a6e8ad1c22cc9e95f36722657b702aa'
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
