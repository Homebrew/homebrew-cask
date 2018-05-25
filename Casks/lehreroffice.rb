cask 'lehreroffice' do
  version '2018.8.0'
  sha256 '78a3b45d3e2e712b94f5e280e3d2c259582be4c6fce4241aa63597056b96c590'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: '4e3fc3526921b7e9827a053ccf1b87494c0d3c8281fe30857084285a94ed4653'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
