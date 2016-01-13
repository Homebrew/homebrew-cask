cask 'mou' do
  version :latest
  sha256 :no_check

  url 'http://25.io/mou/download/Mou.zip'
  appcast 'http://25.io/mou/up/updates.xml',
          :checkpoint => '940c8371b3befffb6075dcbde77fd7c5d8dfb127ddb6c733f5d1cbfbe4246dcb'
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
