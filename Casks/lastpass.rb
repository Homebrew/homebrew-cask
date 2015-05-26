cask :v1 => 'lastpass' do
  version :latest
  sha256 :no_check

  url 'https://lastpass.com/download/cdn/lpmacosx.zip'
  name 'LastPass'
  homepage 'https://lastpass.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :manual => 'LastPass Installer.app'

  uninstall :script => 'Uninstaller.app/Contents/Resources/uninstall.sh'
end
