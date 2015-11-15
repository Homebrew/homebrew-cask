cask :v1 => 'iphoto-library-manager' do
  version '4.2.3'
  sha256 '4f7a45fefefa8fdf5c498422091c3ed150d436e01b4b8127569f652e5d5503ff'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/iplm/iPhotoLibraryManager_#{version.delete('.')}.zip"
  name 'iPhoto Library Manager'
  appcast 'http://www.fatcatsoftware.com/iplm/iplm4_appcast.xml',
          :sha256 => 'bdfe38601eeb932f7865021ad6da5c68af3c5c92c84f3cc598b04b9178348388'
  homepage 'http://www.fatcatsoftware.com/iplm/'
  license :commercial

  app 'iPhoto Library Manager.app'
end
