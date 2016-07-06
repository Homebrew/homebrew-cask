cask 'scratch' do
  version '447'
  sha256 'dc220d902c0d6f0e1e867d867648a00749bcc46a5aee05b74e6df64e23fa9feb'

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
                      sudo:       true,
                    }
end
