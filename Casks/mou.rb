cask 'mou' do
  version '0.8.7'
  sha256 '939a8916038287e5f69883d43738add238a8588a668be0c67079f3cecfa621dc'

  url 'http://25.io/mou/download/Mou.zip'
  appcast 'http://25.io/mou/up/updates.xml'
  name 'Mou'
  homepage 'http://25.io/mou/'

  depends_on macos: '<= :el_capitan'

  app 'Mou.app'

  zap trash: [
               '~/Library/Preferences/com.mouapp.Mou.plist',
               '~/Library/Preferences/com.mouapp.Mou.LSSharedFileList.plist',
               '~/Library/Application Support/Mou',
               '~/Library/Caches/com.mouapp.Mou',
             ]
end
