cask 'lehreroffice-zusatz' do
  version '2018.8.0'
  sha256 'a16c3cd0e9b1f1ebbb06d42e5b595cb0913feaf5cb8e4c9fe149e2a11454f8c8'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '4e3fc3526921b7e9827a053ccf1b87494c0d3c8281fe30857084285a94ed4653'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
