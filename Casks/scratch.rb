cask 'scratch' do
  version '2.0,461'
  sha256 'dcd311b455be8c19861df3b1077c4175b168688ea8e69296a3f5aee6192a13e0'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version.after_comma}.dmg"
  appcast 'https://scratch.mit.edu/scratchr2/static/sa/version.xml'
  name 'Scratch'
  homepage 'https://scratch.mit.edu/download'

  depends_on cask: 'adobe-air'

  installer script: {
                      executable: "Install Scratch #{version.major}.app/Contents/MacOS/Install Scratch #{version.major}",
                      args:       ['-silent'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: '/Applications/Utilities/Adobe AIR Application Installer.app/Contents/MacOS/Adobe AIR Application Installer',
                      args:       ['-uninstall', '-silent', "/Applications/Scratch #{version.major}.app"],
                      sudo:       true,
                    }
end
