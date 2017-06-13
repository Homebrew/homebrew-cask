cask 'domino-cli' do
  version :latest
  sha256 :no_check

  url 'https://app.dominodatalab.com/assets/cli/default/domino-install-mac.dmg'
  name 'Domino Client'
  homepage 'https://www.dominodatalab.com/'

  auto_updates true

  installer script: {
                      executable: 'Domino Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       %w[-q -c -overwrite],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: '/Applications/domino/Domino Uninstaller.app/Contents/MacOS/JavaApplicationStub',
                      args:       %w[-q -c],
                      sudo:       true,
                    }

  caveats do
    path_environment_variable '/Applications/domino'
  end
end
