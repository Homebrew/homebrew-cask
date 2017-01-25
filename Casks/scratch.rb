cask 'scratch' do
  version '2.0,453'
  sha256 'a02759da55edb5209168e30cbb68545a06e9691417ebae2ea64f74d80b94ce4f'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version.after_comma}.dmg"
  appcast 'https://scratch.mit.edu/scratchr2/static/sa/version.xml',
          checkpoint: '1394a9c112ab300d9fc8c2ff4536979188f637e6b32b999379d1863e6dd136c2'
  name 'Scratch'
  homepage 'https://scratch.mit.edu/scratch2download/'

  depends_on cask: 'adobe-air'

  installer script: "Install Scratch #{version.major}.app/Contents/MacOS/Install Scratch #{version.major}",
            args:   %w[-silent],
            sudo:   true

  uninstall script: {
                      executable: Hbc::Container::Air::INSTALLER_PATHNAME,
                      args:       ['-uninstall', '-silent', "/Applications/Scratch\ #{version.major}.app"],
                      sudo:       true,
                    }
end
