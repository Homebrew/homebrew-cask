cask 'iphoto-library-manager' do
  version '4.2.6'
  sha256 '00bf533f8e086ee5a5eb74e48af10dc828400610407e1213f1b83a7d6f881fbc'

  url 'https://www.fatcatsoftware.com/iplm/iPhotoLibraryManager.zip'
  appcast "https://www.fatcatsoftware.com/iplm/iplm#{version.major}_appcast.xml",
          checkpoint: 'f54b77cc4cef9ee266aa32a91059473b3f13e8a6d558ce8e3e1719f52437f2cd'
  name 'iPhoto Library Manager'
  homepage 'https://www.fatcatsoftware.com/iplm/'

  app 'iPhoto Library Manager.app'
end
