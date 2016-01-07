cask 'iphoto-library-manager' do
  version '4.2.3'
  sha256 '4f7a45fefefa8fdf5c498422091c3ed150d436e01b4b8127569f652e5d5503ff'

  url 'http://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip'
  appcast 'http://www.fatcatsoftware.com/iplm/iplm4_appcast.xml',
          :sha256 => 'dbf62877f3503a9362a1628f878057f5d1d78d100d21a00ac23888b563910d38'
  name 'iPhoto Library Manager'
  homepage 'http://www.fatcatsoftware.com/iplm/'
  license :commercial

  app 'iPhoto Library Manager.app'
end
