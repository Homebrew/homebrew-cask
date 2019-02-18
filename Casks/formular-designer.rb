cask 'formular-designer' do
  version '2019.2.2'
  sha256 '626b798346e59762c46853a739b2f2f6f8d1eb27f2d4c8d7c787d892a29d44dd'

  url 'https://www.lehreroffice.ch/lo/dateien/designer/lo_designer_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Designer'
  name 'Formular-Designer'
  homepage 'https://www.lehreroffice.ch/'

  app 'Formular-Designer.app'
end
