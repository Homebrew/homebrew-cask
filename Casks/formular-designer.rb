cask 'formular-designer' do
  version '2019.2.0'
  sha256 '744d07ca5381e4645ad6f033c5beaf5fa9804147be0498e00b99e08ba6b24c58'

  url 'https://www.lehreroffice.ch/lo/dateien/designer/lo_designer_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Designer'
  name 'Formular-Designer'
  homepage 'https://www.lehreroffice.ch/'

  app 'Formular-Designer.app'
end
