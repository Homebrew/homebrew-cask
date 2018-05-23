cask 'lastpass' do
  version :latest
  sha256 :no_check

  url 'https://lastpass.com/download/cdn/lpmacosx.zip'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  installer manual: 'LastPass Installer/LastPass Installer.app'

  uninstall script: {
                      executable: 'Uninstaller.app/Contents/Resources/uninstall.sh',
                      sudo:       true,
                    }
end
