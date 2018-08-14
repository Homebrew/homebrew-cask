cask 'jabref' do
  version '4.3.1'
  sha256 '6df22704818cee1e32ead6d08f4ee025d85d733581e5b830a0d155481880d49e'

  # github.com/JabRef/jabref was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom'
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
