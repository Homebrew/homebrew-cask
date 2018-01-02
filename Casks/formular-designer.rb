cask 'formular-designer' do
  version :latest
  sha256 :no_check

  url 'https://www.lehreroffice.ch/lo/dateien/designer/lo_designer_mac.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Designer',
          checkpoint: '3ed41774545c3c4d19ceb71cedfb8eb7f8231a16b61ca36e1d7f0b21a32a8316'
  name 'Formular-Designer'
  homepage 'https://www.lehreroffice.ch/'

  app 'Formular-Designer.app'
end
