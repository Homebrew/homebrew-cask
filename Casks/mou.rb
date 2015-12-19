cask 'mou' do
  version :latest
  sha256 :no_check

  url 'http://25.io/mou/download/Mou.zip'
  appcast 'http://25.io/mou/up/updates.xml'
  name 'Mou'
  homepage 'http://25.io/mou/'
  license :commercial

  app 'Mou.app'

  zap :delete => [
                  '~/Library/Preferences/com.mouapp.Mou.plist',
                  '~/Library/Preferences/com.mouapp.Mou.LSSharedFileList.plist',
                  '~/Library/Application Support/Mou',
                 ]
end
