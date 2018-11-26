cask 'shoebox' do
  version :latest
  sha256 :no_check

  url 'http://downloads.shoeboxapp.com/desktopv3/Shoebox%20Setup.dmg'
  name 'Shoebox'
  homepage 'https://shoeboxapp.com/'

  app 'Shoebox.app'

  zap trash: [
               '~/Library/Application Support/Shoebox',
               '~/Library/Logs/Shoebox',
               '~/Library/Preferences/couchlabs.Shoebox.helper.plist',
               '~/Library/Preferences/couchlabs.Shoebox.plist',
               '~/Library/Saved Application State/couchlabs.Shoebox.savedState',
             ]
end
