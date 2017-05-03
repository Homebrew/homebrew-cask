cask 'scrabble3d' do
  version :latest
  sha256 :no_check

  url 'https://downloads.sourceforge.net/project/scrabble/Main_Program/MacOS/Scrabble3D-darwin.pkg'
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
