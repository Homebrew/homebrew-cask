cask 'jabref' do
  version '3.4'
  sha256 '5315e66a3e9b7b606a1c514d5c332c7ca9b41daba2f0150df4558bf8ad84c0f2'

  # sourceforge.net/project/jabref was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/jabref/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: '251d98301098322e1887babb12dcd77b296c21eb6956f6111a1f969112c7e173'
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
