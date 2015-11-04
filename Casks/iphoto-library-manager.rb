cask :v1 => 'iphoto-library-manager' do
  version '4.2.2'
  sha256 '8a0444361d50174f0fb9ac23e368b7cf1616985319770d8cb33aa9c7d535fc8f'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/iplm/iPhotoLibraryManager_#{version.delete('.')}.zip"
  name 'iPhoto Library Manager'
  appcast 'http://www.fatcatsoftware.com/iplm/iplm4_appcast.xml',
          :sha256 => 'bdfe38601eeb932f7865021ad6da5c68af3c5c92c84f3cc598b04b9178348388'
  homepage 'http://www.fatcatsoftware.com/iplm/'
  license :commercial

  app 'iPhoto Library Manager.app'
end
