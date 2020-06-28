cask 'gnucash' do
  version '3.11,1'
  sha256 '840eb08731a58e463efaf640bd011637d3f23a6125ee313c167de1f1640424dd'

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
