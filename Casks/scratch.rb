cask 'scratch' do
  version '2.0,454'
  sha256 '5da6ce46e860dac4be11093eac99f01834e21d9b385ba676c5026ad104041cbb'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version.after_comma}.dmg"
  appcast 'https://scratch.mit.edu/scratchr2/static/sa/version.xml',
          checkpoint: '9764185dc2913aa7974f9b59d41105abfb870a3e62591b1f5531c6c5cc4dc30d'
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
                      args:       ['-uninstall', '-silent', "/Applications/Scratch\ #{version.major}.app"],
                      sudo:       true,
                    }
end
