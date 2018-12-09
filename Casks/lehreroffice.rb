cask 'lehreroffice' do
  version '2018.17'
  sha256 'fb7b9b006e02c4ab32cb6a271825f3308e4e16737de66dda1e9917b295f6f175'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
