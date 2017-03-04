cask 'iphoto-library-manager' do
  version '4.2.5'
  sha256 '797e14d8714c82d35e0a81e1dddb04117b9188e668aa453256f63f7faa816274'

  url 'https://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip'
  appcast "https://www.fatcatsoftware.com/iplm/iplm#{version.major}_appcast.xml",
          checkpoint: 'd050807aec6efe87d4fa378e18000bc5292171c4488398702ffa181fadb99c1e'
  name 'iPhoto Library Manager'
  homepage 'https://www.fatcatsoftware.com/iplm/'

  app 'iPhoto Library Manager.app'
end
