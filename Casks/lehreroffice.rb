cask 'lehreroffice' do
  version '2017.19.4'
  sha256 '28bfb4f2030113c7be71eacd526a9409d363b3b9a8524d31af4252d1298a8d8b'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: 'cbe9319b16e5fc667c36ca4790cae5cf9ab250b4573248e9440039ca367c5ada'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
