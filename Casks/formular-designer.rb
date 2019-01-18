cask 'formular-designer' do
  version '2019.1.0'
  sha256 '64c3f95da72c023fff4121e2819477ed1ce3ad06d2359dfa271cc8d45c522186'

  url 'https://www.lehreroffice.ch/lo/dateien/designer/lo_designer_macos.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Designer'
  name 'Formular-Designer'
  homepage 'https://www.lehreroffice.ch/'

  app 'Formular-Designer.app'
end
