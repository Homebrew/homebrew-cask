cask 'jabref' do
  version '3.6'
  sha256 '1eabadccc6eca0c4a7157870509e8d5702351cf9f438d126e25859c92edae52a'

  # github.com/JabRef/jabref was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: '0cff3ed91fec9ffd92eb9592882c38f7f630fbb57c17e50fc1bc70f997b77729'
  name 'JabRef'
  homepage 'https://www.jabref.org/'

  installer script: 'JabRef Installer.app/Contents/MacOS/JavaApplicationStub',
            args:   [
                      '-q',
                      '-VcreateDesktopLinkAction$Boolean=false',
                      '-VaddToDockAction$Boolean=false',
                      '-VshowFileAction$Boolean=false',
                      '-Vsys.installationDir=/Applications',
                      '-VexecutionLauncherAction$Boolean=false',
                    ],
            sudo:   false

  uninstall delete: '/Applications/JabRef.app'
end
