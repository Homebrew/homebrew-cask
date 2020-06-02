cask 'gnucash' do
  version '3.903,1'
  sha256 '237d0cae6df20ec0e08a140f2a0e40f6f7e314db8199780c99011cfe9c85c31f'

  # github.com/Gnucash/gnucash/ was verified as official when first introduced to the cask
  url "https://github.com/Gnucash/gnucash/releases/download/#{version.before_comma}/Gnucash-Intel-#{version.before_comma.chomp('b')}-#{version.after_comma}.dmg"
  appcast 'https://github.com/Gnucash/gnucash/releases.atom'
  name 'GnuCash'
  homepage 'https://www.gnucash.org/'

  app 'Gnucash.app'

  zap trash: [
               '~/Library/Application Support/Gnucash',
               '~/Library/Preferences/org.gnucash.Gnucash.plist',
               '~/Library/Saved Application State/org.gnucash.Gnucash.savedState',
             ]
end
