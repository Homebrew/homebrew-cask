cask 'formular-designer' do
  version '2018.1.0'
  sha256 'f40f0c8b5e1259ad8cd575102ec36393e3c296534ffb477c50f32398d115b307'

  url 'https://www.lehreroffice.ch/lo/dateien/designer/lo_designer_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Designer',
          checkpoint: '6fe4f5161c743ebd123751643531c2d1b4e78f578dc1b5bed3ca094501c44cde'
  name 'Formular-Designer'
  homepage 'https://www.lehreroffice.ch/'

  app 'Formular-Designer.app'
end
