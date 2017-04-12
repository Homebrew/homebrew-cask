cask 'scratch' do
  version '2.0,454'
  sha256 '5da6ce46e860dac4be11093eac99f01834e21d9b385ba676c5026ad104041cbb'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version.after_comma}.dmg"
  appcast 'https://scratch.mit.edu/scratchr2/static/sa/version.xml',
          checkpoint: '8226770c3ad032b4ecd8e93815673be427024937cbea9f13cd1c532fc47830a4'
  name 'Scratch'
  homepage 'https://scratch.mit.edu/scratch2download/'

  depends_on cask: 'adobe-air'

  installer script: {
                      executable: "Install Scratch #{version.major}.app/Contents/MacOS/Install Scratch #{version.major}",
                      args:       %w[-silent],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: Hbc::Container::Air::INSTALLER_PATHNAME,
                      args:       ['-uninstall', '-silent', "/Applications/Scratch\ #{version.major}.app"],
                      sudo:       true,
                    }
end
