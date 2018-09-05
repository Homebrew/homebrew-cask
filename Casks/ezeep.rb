cask 'ezeep' do
  version :latest
  sha256 :no_check

  url 'https://www.ezeep.com/wp-content/uploads/packages/osx/stable/ezeepInstaller.dmg'
  name 'ezeep'
  homepage 'https://www.ezeep.com/'

  installer manual: 'ezeep Installer.app'

  uninstall script: {
                      executable: "#{staged_path}/ezeep Installer.app/Contents/Resources/uninstall.sh",
                      args:       ['production'],
                      sudo:       true,
                    }
end
