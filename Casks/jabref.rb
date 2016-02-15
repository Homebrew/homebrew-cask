cask 'jabref' do
  version '3.2'
  sha256 'ddde9938c3d5092ffe2ba2ecd127439de4ae304d783b5e33056951f449a185b5'

  url "http://downloads.sourceforge.net/project/jabref/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  name 'JabRef'
  homepage 'http://www.jabref.org/'
  license :gpl

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
