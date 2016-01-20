cask 'iphoto-library-manager' do
  version '4.2.3'
  sha256 '4f7a45fefefa8fdf5c498422091c3ed150d436e01b4b8127569f652e5d5503ff'

  url 'http://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip'
  appcast 'http://www.fatcatsoftware.com/iplm/iplm4_appcast.xml',
          checkpoint: '9cd0d4af7715f97f8390581f11d3962e35b89bff700fd4a33a074c7626348c98'
  name 'iPhoto Library Manager'
  homepage 'http://www.fatcatsoftware.com/iplm/'
  license :commercial

  app 'iPhoto Library Manager.app'
end
