cask 'lehreroffice' do
  version '2020.5.6'
  sha256 '53606de221dfe2ffa353ff07c91fc342a7a60548c4ba84c7392058c42589708e'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
