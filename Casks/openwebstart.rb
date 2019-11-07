cask 'openwebstart' do
  version '0.5.0'
  sha256 'a6c7ff4c2171a32c0d5bb4fe71743d5fa84f3b8458c16d292191aebdd1476a99'

  # github.com/karakun/OpenWebStart was verified as official when first introduced to the cask
  url "https://github.com/karakun/OpenWebStart/releases/download/v#{version}/OpenWebStart_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/karakun/OpenWebStart/releases.atom'
  name 'OpenWebStart'
  homepage 'https://openwebstart.com/'

  installer script: {
                      executable: 'OpenWebStart Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: '/Applications/OpenWebStart/OpenWebStart Uninstaller.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                      sudo:       true,
                    }
end
