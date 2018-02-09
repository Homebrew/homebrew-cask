cask 'lehreroffice' do
  version '2018.1.1'
  sha256 '368a68a3e3a9bc34a645fc4abe444d15fe9ba010995938d7bfda6470dc8596e6'

  url 'https://www.lehreroffice.ch/lo/dateien/easy/lo_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Desktop',
          checkpoint: 'bd9aea9ce46c817c7fb0c4be6f91613491daba7b727db91fb53a14c4c612a7e0'
  name 'LehrerOffice'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice.app'
end
