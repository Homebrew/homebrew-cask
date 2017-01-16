cask 'gnucash' do
  version '2.6.15-1'
  sha256 '009a33dc8d0ac6dd73a380085a62900fcc469e290c0d5001970c87c7a9d7d9a5'

  # github.com/Gnucash/gnucash was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.major_minor_patch}/Gnucash-Intel-#{version}.dmg"
  appcast 'https://github.com/Gnucash/gnucash/releases.atom',
          checkpoint: '7e9f730f8d4d5434a3da8c14a5880d8d253ff7e17ca3cb7036a5677e1739ba80'
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
