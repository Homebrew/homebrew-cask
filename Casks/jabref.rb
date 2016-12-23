cask 'jabref' do
  version '3.8'
  sha256 '12ab8a17f3dd809efea40d0f9b05a4bad2afacb8dfb89568582fc4ac45800aca'

  # github.com/JabRef/jabref was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: '812f5c928948e8eaf79da841c6eee460aa2681a0d8c0d6be98f17709a6fe68a9'
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
