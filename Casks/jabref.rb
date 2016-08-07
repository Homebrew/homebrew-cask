cask 'jabref' do
  version '3.5'
  sha256 'fea9b90668c94c31e18c0a6593adacb84e1247aa4f937ddeb8719deb2a900e4c'

  # github.com/JabRef/jabref was verified as official when first introduced to the cask
  url "https://github.com/JabRef/jabref/releases/download/v#{version}/JabRef_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/JabRef/jabref/releases.atom',
          checkpoint: '5529a3b6efe55446a7621c7de9727fdcdcebf06cf4a078738ce12b70b1ba1312'
  name 'JabRef'
  homepage 'https://www.jabref.org/'
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
