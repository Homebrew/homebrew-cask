cask 'scrabble3d' do
  version :latest
  sha256 :no_check

  # downloads.sourceforge.net/scrabble was verified as official when first introduced to the cask
  url 'https://downloads.sourceforge.net/scrabble/Scrabble3D-darwin.pkg'
  appcast 'https://sourceforge.net/projects/scrabble/rss?path=/Main_Program/MacOS',
          checkpoint: 'd126154155cdbe7ad8c285e739a8a902e69bded1b6b980d9280495796c123351'
  name 'Scrabble3D'
  homepage 'https://scrabble.sourceforge.io/'

  pkg 'Scrabble3D-darwin.pkg'

  uninstall pkgutil: 'com.company.Scrabble3D'

  zap delete: [
                '~/.config/Scrabble3D',
                '~/Library/Preferences/com.company.Scrabble3D.plist',
                '~/Library/Logs/Homebrew/scrabble3d',
                '~/Library/Saved Application State/com.company.Scrabble3D.savedState',
              ]
end
