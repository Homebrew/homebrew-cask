cask 'scrabble3d' do
  version :latest
  sha256 :no_check

  # sourceforge.net/projects/scrabble was verified as official when first introduced to the cask
  url 'https://sourceforge.net/projects/scrabble/files/latest/download'
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
