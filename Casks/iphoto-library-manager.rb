cask :v1 => 'iphoto-library-manager' do
  version '4.2.1'
  sha256 'fc4c70e5fd54d73e2f73c0acc6bfcd3c744dfd7ccb99119afaf824467cb0c015'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/iplm/iPhotoLibraryManager_#{version.delete('.')}.zip"
  name 'iPhoto Library Manager'
  appcast 'http://www.fatcatsoftware.com/iplm/iplm4_appcast.xml',
          :sha256 => 'bdfe38601eeb932f7865021ad6da5c68af3c5c92c84f3cc598b04b9178348388'
  homepage 'http://www.fatcatsoftware.com/iplm/'
  license :commercial

  app 'iPhoto Library Manager.app'
end
