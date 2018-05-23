cask 'formular-designer' do
  version '2018.2.0'
  sha256 '86f6f70b5df6535e81c17deb2dc16166ce5f7a92be79be28c3b73d74b5187474'

  url 'https://www.lehreroffice.ch/lo/dateien/designer/lo_designer_osx.dmg'
  appcast 'https://www.lehreroffice.ch/services/update/getcurrentversion.php?app=Designer',
          checkpoint: '96aab4a8f7d62edade54ceb5a82d24e4710dab28af25be8b1ef4cbe68d1d6d58'
  name 'Formular-Designer'
  homepage 'https://www.lehreroffice.ch/'

  app 'Formular-Designer.app'
end
