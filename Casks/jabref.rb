cask 'jabref' do
  version '3.2'
  sha256 'ddde9938c3d5092ffe2ba2ecd127439de4ae304d783b5e33056951f449a185b5'

  # sourceforge.net/project/jabref was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/jabref/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: '397228862c29af39b57e97e0a4337508d56fadd96289ecf54a8369955c9d2e21'
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
