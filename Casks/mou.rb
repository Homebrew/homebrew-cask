cask 'mou' do
  version '0.8.7'
  sha256 '939a8916038287e5f69883d43738add238a8588a668be0c67079f3cecfa621dc'

  url 'http://25.io/mou/download/Mou.zip'
  appcast 'http://25.io/mou/up/updates.xml',
          checkpoint: 'd97ac9eeef0a00c1f583ff7fd804ca12f63c970a61eeb0925bfb3b0f3d018eb6'
  name 'Mou'
  homepage 'http://25.io/mou/'
  license :commercial

  app 'Mou.app'

  zap delete: [
                '~/Library/Preferences/com.mouapp.Mou.plist',
                '~/Library/Preferences/com.mouapp.Mou.LSSharedFileList.plist',
                '~/Library/Application Support/Mou',
              ]
end
