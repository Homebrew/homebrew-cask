cask 'gnucash' do
  version '4.1,1'
  sha256 '2750e0391b545544f54aaa11117a1b999a82f178452c01d018c00642e82cf2b1'

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
