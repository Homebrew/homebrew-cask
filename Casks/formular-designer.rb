cask 'formular-designer' do
  version '2016.1.0'
  sha256 'e0aa68784586cda45c2f253432dee5ffff784b63e2fbaa7ba4e6c6780aa781c2'

  url 'https://www.lehreroffice.ch/lo/dateien/designer/lo_designer_mac.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Designer',
          checkpoint: '3ed41774545c3c4d19ceb71cedfb8eb7f8231a16b61ca36e1d7f0b21a32a8316'
  name 'Formular-Designer'
  homepage 'https://www.lehreroffice.ch/'

  app 'Formular-Designer.app'
end
