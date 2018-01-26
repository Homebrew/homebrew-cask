cask 'lehreroffice-zusatz' do
  version '2017.19.4'
  sha256 '64db16b20f27c891f1581ffa4902946ec872696c45887ace5e0232989b3a0de2'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: 'cbe9319b16e5fc667c36ca4790cae5cf9ab250b4573248e9440039ca367c5ada'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
