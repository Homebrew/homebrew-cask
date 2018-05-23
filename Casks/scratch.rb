cask 'scratch' do
  version '2.0,460'
  sha256 '5f57d60f26f7fa7de4c76d87c17d135c81bc4018a052f81a62903994c21a3b9b'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version.after_comma}.dmg"
  appcast 'https://scratch.mit.edu/scratchr2/static/sa/version.xml',
          checkpoint: 'ab701ad4d672d730d41b10c48467031cc21e4335066911d4cca2fbfa086a5844'
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
