cask 'lehreroffice-zusatz' do
  version '2018.6.0'
  sha256 '80eebe60ee2e478398f5ebbe9c9bc83a675d73b33971ac0723e7499208123405'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '46f4af140891dbba91890b2a69bedd15adb7dd6e4b08bf7617924434796f9cac'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
