cask 'jabref' do
  version '3.8.2'
  sha256 'c3ad1179b926150a7140aceb93bac3222460ec41ab2937b38af17331e4b52988'

  # github.com/JabRef/jabref was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: 'd268dfab21a8e70fc8e8e3d99174cbda3ba86b3910f2f3fe76c05f2d37fb6846'
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
                    ]

  uninstall delete: '/Applications/JabRef.app'
end
