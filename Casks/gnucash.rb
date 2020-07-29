cask 'gnucash' do
  version '4.0,2'
  sha256 'c470b3415b7a6c363f237193f7c6df38bbc6d9b6deabf4bd8b6a25f34f29d7f1'

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
