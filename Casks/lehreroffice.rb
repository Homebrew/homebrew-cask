cask 'lehreroffice' do
  version '2018.8.1'
  sha256 '78a3b45d3e2e712b94f5e280e3d2c259582be4c6fce4241aa63597056b96c590'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '24c55b7df2e4293f19168f978da2e0bba582a19bb52aba5f08521d5154e39a96'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
