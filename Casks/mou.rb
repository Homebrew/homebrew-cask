class Mou < Cask
  version 'latest'
  sha256 :no_check

  url 'http://mouapp.com/download/Mou.zip'
  appcast 'http://mouapp.com/up/updates.xml'
  homepage 'http://mouapp.com/'

  app 'Mou.app'
  zap :files => [
                 '~/Library/Preferences/com.mouapp.Mou.plist',
                 '~/Library/Preferences/com.mouapp.Mou.LSSharedFileList.plist',
                 '~/Library/Application Support/Mou',
                ]
end
