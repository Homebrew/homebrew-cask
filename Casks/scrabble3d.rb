cask 'scrabble3d' do
  version '3.1.4'
  sha256 '1bc82a2e1feebfdcd822d06d43d542c10aceb3804977c349e7e3fed050da3261'

  url 'https://downloads.sourceforge.net/scrabble/Scrabble3D-darwin.pkg'
  appcast 'https://sourceforge.net/projects/scrabble/rss?path=/Main_Program/MacOS',
          checkpoint: 'd126154155cdbe7ad8c285e739a8a902e69bded1b6b980d9280495796c123351'
  name 'Scrabble3D'
  homepage 'http://scrabble.sourceforge.net/'

  pkg 'Scrabble3D-darwin.pkg'

  uninstall pkgutil: 'com.company.Scrabble3D'

  zap trash: [
               '~/.config/Scrabble3D',
               '~/Library/Preferences/com.company.Scrabble3D.plist',
               '~/Library/Logs/Homebrew/scrabble3d',
               '~/Library/Saved Application State/com.company.Scrabble3D.savedState',
             ]
end
