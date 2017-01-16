cask 'jabref' do
  version '3.8.1'
  sha256 'f38567286fce988c4431ee820b59e0e17cc861b91529e63117610e44b253eefd'

  # github.com/JabRef/jabref was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: 'b49423d0e6f035fc646372b494d98a31b6ef34c0dcdb1ae11a7c02898d559610'
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
