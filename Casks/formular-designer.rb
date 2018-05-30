cask 'formular-designer' do
  version '2018.2.1'
  sha256 'f7f42ba37690551b0c1132671d7730817fabfd8f2c5199b62c77efe46cf923df'

  url 'https://www.lehreroffice.ch/lo/dateien/designer/lo_designer_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Designer',
          checkpoint: '448978f227fba2a1f8b2682b73e925ba6b90f816b271e6eb4030897b24d76a12'
  name 'Formular-Designer'
  homepage 'https://www.lehreroffice.ch/'

  app 'Formular-Designer.app'
end
