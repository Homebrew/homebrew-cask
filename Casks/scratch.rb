cask 'scratch' do
  version '450'
  sha256 'bfe08081a5430a73cdc8b5d650decfbb3d71356d1e6599d942eaf73513918998'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version}.dmg"
  name 'Scratch'
  homepage 'https://scratch.mit.edu/scratch2download/'

  depends_on cask: 'adobe-air'

  installer script: 'Install Scratch 2.app/Contents/MacOS/Install Scratch 2',
            args:   %w[-silent],
            sudo:   true

  uninstall script: {
                      executable: Hbc::Container::Air::INSTALLER_PATHNAME,
                      args:       %w[-uninstall -silent /Applications/Scratch\ 2.app],
                      sudo:       true,
                    }
end
