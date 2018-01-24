cask 'scratch' do
  version '2.0,458.0.1'
  sha256 '52c115cc8ab1df6e55b2e2b2e0662484c26b5e5713acd4cf63d03e8d24895e0f'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version.after_comma}.dmg"
  appcast 'https://scratch.mit.edu/scratchr2/static/sa/version.xml',
          checkpoint: '36a3f46c516aeb0230bfc4dac736d1c13ef9586967db08b821c1ad7f1db3c8ca'
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
