cask 'jabref' do
  version '4.1'
  sha256 'f22108d6bda73978a51ca5759dd2a46619678427f3d9154e55f935004fa93751'

  # github.com/JabRef/jabref was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: '90eba3d359c9692fd843f940d17b9796dde4ab327b65651e865515eb0697081a'
  name 'JabRef'
  homepage 'https://www.jabref.org/'

  installer script: {
                      executable: 'JabRef Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       [
                                    '-q',
                                    '-VcreateDesktopLinkAction$Boolean=false',
                                    '-VaddToDockAction$Boolean=false',
                                    '-VshowFileAction$Boolean=false',
                                    '-Vsys.installationDir=/Applications',
                                    '-VexecutionLauncherAction$Boolean=false',
                                  ],
                    }

  uninstall delete: '/Applications/JabRef.app'
end
