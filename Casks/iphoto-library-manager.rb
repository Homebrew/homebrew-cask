cask 'iphoto-library-manager' do
  version '4.2.3'
  sha256 '4f7a45fefefa8fdf5c498422091c3ed150d436e01b4b8127569f652e5d5503ff'

  url 'http://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip'
  appcast 'http://www.fatcatsoftware.com/iplm/iplm4_appcast.xml',
          :checkpoint => '534f40ef59f481023f7f374d9b3241a17d98834a9a4a403d769296fbb0a76f77'
  name 'iPhoto Library Manager'
  homepage 'http://www.fatcatsoftware.com/iplm/'
  license :commercial

  app 'iPhoto Library Manager.app'
end
