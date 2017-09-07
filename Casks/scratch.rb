cask 'scratch' do
  version '2.0,456'
  sha256 '8c5d15775d6d7e9e01b0be91c6a6889136cb7e5e284ec9285ab0c80687b58196'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version.after_comma}.dmg"
  appcast 'https://scratch.mit.edu/scratchr2/static/sa/version.xml',
          checkpoint: '354897fa6cf5d9de5f33a1d9857b9406f2841db67c80b92dd38cea4fa4a08f31'
  name 'Scratch'
  homepage 'https://scratch.mit.edu/download'

  depends_on cask: 'adobe-air'

  installer script: {
                      executable: "Install Scratch #{version.major}.app/Contents/MacOS/Install Scratch #{version.major}",
                      args:       ['-silent'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: Hbc::Container::Air::INSTALLER_PATHNAME,
                      args:       ['-uninstall', '-silent', "/Applications/Scratch #{version.major}.app"],
                      sudo:       true,
                    }
end
