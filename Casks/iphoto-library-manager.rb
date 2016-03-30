cask 'iphoto-library-manager' do
  version '4.2.4'
  sha256 '4710def2d0a3f91152c08b128d03b38207455e43ff36fd5d337758cbeaa64309'

  url 'http://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip'
  appcast 'http://www.fatcatsoftware.com/iplm/iplm4_appcast.xml',
          checkpoint: 'd1a4cdb9ec10226113286433595506743481a2fb1d95bd3bb89256143d7dc2fd'
  name 'iPhoto Library Manager'
  homepage 'http://www.fatcatsoftware.com/iplm/'
  license :commercial

  app 'iPhoto Library Manager.app'
end
