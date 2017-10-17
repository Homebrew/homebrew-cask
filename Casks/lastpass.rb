cask 'lastpass' do
  version :latest
  sha256 :no_check

  url 'https://lastpass.com/download/cdn/lpmacosx.zip'
  name 'LastPass'
  desc 'Install the \'Binary-enabled\' LastPass Web Extensions for your default web browser and other installed browsers, including: Safari, Firefox, Chrome, Opera.'
  homepage 'https://www.lastpass.com/'

  installer manual: 'LastPass Installer.app'

  uninstall script: {
                      executable: 'Uninstaller.app/Contents/Resources/uninstall.sh',
                      sudo:       true,
                    }
end
