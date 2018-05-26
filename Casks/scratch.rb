cask 'scratch' do
  version '2.0,460.0.1'
  sha256 '403b283e6c655be3006913eb22a440a23b3803576db16512ce8b573ff06b10d1'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version.after_comma}.dmg"
  appcast 'https://scratch.mit.edu/scratchr2/static/sa/version.xml',
          checkpoint: 'd0234a4cb39ffa24a9babbdefd63b8835dfa094d056a2ae3eabbf165ffdb6830'
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
