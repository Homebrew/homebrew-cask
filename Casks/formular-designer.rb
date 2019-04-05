cask 'formular-designer' do
  version '2019.2.3'
  sha256 'b4a243647bba39a40d2f014fdfbafe081a74d492cf6e3229894f6f19c9a57a84'

  url 'https://www.lehreroffice.ch/lo/dateien/designer/lo_designer_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Designer'
  name 'Formular-Designer'
  homepage 'https://www.lehreroffice.ch/'

  app 'Formular-Designer.app'
end
