cask 'lehreroffice' do
  version '2019.2.2'
  sha256 'e4ed78578c8d0d8f9fdb297deeeadb4f22a5dab9db76af7b3489601e617b1f0f'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
