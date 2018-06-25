cask 'formular-designer' do
  version '2018.2.1'
  sha256 'f7f42ba37690551b0c1132671d7730817fabfd8f2c5199b62c77efe46cf923df'

  url 'https://www.lehreroffice.ch/lo/dateien/designer/lo_designer_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Designer'
  name 'Formular-Designer'
  homepage 'https://www.lehreroffice.ch/'

  app 'Formular-Designer.app'
end
