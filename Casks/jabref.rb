cask 'jabref' do
  version '3.7'
  sha256 'd5833d9624c2a6f71a41b56bf82b300a5ee58cefc62dc2c29d6fdbe3ad7029c5'

  # github.com/JabRef/jabref was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: 'e9c5d2fa45eb53b586ba0afd00392ba74c09ad8587c70f4588eae82ff35bf9b9'
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
