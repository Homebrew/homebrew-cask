cask 'formular-designer' do
  version '2018.2.2'
  sha256 '14fe7118e247c17331dd6e10db67dd3495b9a17c1d994b372b591336a15de78b'

  url 'https://www.lehreroffice.ch/lo/dateien/designer/lo_designer_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Designer'
  name 'Formular-Designer'
  homepage 'https://www.lehreroffice.ch/'

  app 'Formular-Designer.app'
end
