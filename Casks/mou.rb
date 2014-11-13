cask :v1 => 'mou' do
  version :latest
  sha256 :no_check

  url 'http://mouapp.com/download/Mou.zip'
  appcast 'http://mouapp.com/up/updates.xml'
  homepage 'http://mouapp.com/'
  license :unknown

  app 'Mou.app'
  zap :delete => [
                  '~/Library/Preferences/com.mouapp.Mou.plist',
                  '~/Library/Preferences/com.mouapp.Mou.LSSharedFileList.plist',
                  '~/Library/Application Support/Mou',
                 ]
end
