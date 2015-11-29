cask :v1 => 'lastpass' do
  version :latest
  sha256 :no_check

  url 'https://lastpass.com/download/cdn/lpmacosx.zip'
  name 'LastPass'
  homepage 'https://lastpass.com/'
  license :gratis

  installer :manual => 'LastPass Installer.app'

  uninstall :script => 'Uninstaller.app/Contents/Resources/uninstall.sh',
            :sudo => true
end
