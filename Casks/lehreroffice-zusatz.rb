cask 'lehreroffice-zusatz' do
  version '2018.10.0'
  sha256 'ea064554fd6f30a15705e738b0079e67fafcd9a2ae883170eaee2bfe3cb89e0b'

  url 'https://www.lehreroffice.ch/lo/dateien/zusatz/lo_zusatz_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Zusatz'
  name 'LehrerOffice Zusatz'
  homepage 'https://www.lehreroffice.ch/'

  app 'LehrerOffice Zusatz.app'
end
