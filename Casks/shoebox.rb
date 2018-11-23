cask 'shoebox' do
  version :latest
  sha256 :no_check

  if MacOS.version >= :mavericks
    url 'http://downloads.shoeboxapp.com/desktopv3/Shoebox%20Setup.dmg'
  else
    url 'http://downloads.shoeboxapp.com/mac/Shoebox%20Installer.dmg'
  end

  name 'Shoebox'
  homepage 'https://shoeboxapp.com/'

  depends_on macos: '>= :snow_leopard'

  app 'Shoebox.app'

  zap trash: [
               '~/Library/Application Support/Shoebox',
               '~/Library/Logs/Shoebox',
               '~/Library/Preferences/couchlabs.Shoebox.helper.plist',
               '~/Library/Preferences/couchlabs.Shoebox.plist',
               '~/Library/Saved Application State/couchlabs.Shoebox.savedState',
             ]
end
