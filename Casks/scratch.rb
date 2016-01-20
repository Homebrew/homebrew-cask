cask 'scratch' do
  version '442'
  sha256 'f122355c34dbcfe9e8ab806dd1c7b0998af67d343a8352f320601e9be0b9e869'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version}.dmg"
  name 'Scratch'
  homepage 'https://scratch.mit.edu/scratch2download/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  depends_on cask: 'adobe-air'

  installer script: 'Install Scratch 2.app/Contents/MacOS/Install Scratch 2',
            args:   %w[-silent],
            sudo:   true

  uninstall script: {
                      executable: Hbc::Container::Air::INSTALLER_PATHNAME,
                      args:       %w[-uninstall -silent /Applications/Scratch\ 2.app],
                    }
end
