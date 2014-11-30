cask :v1 => 'lastpass-universal' do
  version :latest
  sha256 :no_check

  url 'https://lastpass.com/download/cdn/lpmacosx.zip'
  homepage 'https://lastpass.com/'
  license :unknown

  installer :manual => 'LastPass Installer.app'

  uninstall :script => 'Uninstaller.app/Contents/Resources/uninstall.sh'
end
