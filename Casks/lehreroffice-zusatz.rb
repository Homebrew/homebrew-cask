cask 'lehreroffice-zusatz' do
  version '2018.8.1'
  sha256 'a1fca5bccee47bab7c8baee0af10e96968f54a65916415879242775b31d3c3e0'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz',
          checkpoint: '24c55b7df2e4293f19168f978da2e0bba582a19bb52aba5f08521d5154e39a96'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
