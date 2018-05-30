cask 'lehreroffice' do
  version '2018.8.1'
  sha256 'f317bf512cd307073fab46f05cc32416311e7072d69db9e1cb95fcb15b88cd50'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_desktop_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '24c55b7df2e4293f19168f978da2e0bba582a19bb52aba5f08521d5154e39a96'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
