cask 'jabref' do
  version '3.3'
  sha256 '949bd9a1a3bb0c71dccfa73e6f9c62627071534250db79bdd051f79f75a3c2a8'

  # sourceforge.net/project/jabref was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/jabref/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: 'd4d445db221bf7ac2889bb5abbec4ca933cf2c533bdebcdf716d2c22c11776e0'
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
