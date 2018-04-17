cask 'lehreroffice' do
  version '2018.5.0'
  sha256 'fd61efcb433d6952399e295104624b36572a4c1e6afb9b38615f888d8ec60928'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '56468370af51073f2261b475ca6387f3ac9cb9725819e9c7fe80c5c2da5ac0d7'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
