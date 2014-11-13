cask :v1 => 'geektool' do
  version '3.1.1-311'
  sha256 'ef1a7439d91f0de9e459a4677c6f95fe35bd7e02c300adc9ce315b5590cbbfc9'

  url "http://download.tynsoe.org/GeekTool-#{version}.zip"
  appcast 'http://dl.dropboxusercontent.com/u/1760713/appcast/appcast.xml',
          :sha256 => 'd6c25d30d5289824a9b1526f56c5bdacbfd6ffda9cb9d6a8ac42e88fe2dbebc3'
  homepage 'http://projects.tynsoe.org/en/geektool/'
  license :mit

  app 'GeekTool.app'
  zap :delete => [
                  '~/Library/Preferences/org.tynsoe.GeekTool.plist',
                  '~/Library/Preferences/org.tynsoe.geeklet.file.plist',
                  '~/Library/Preferences/org.tynsoe.geeklet.image.plist',
                  '~/Library/Preferences/org.tynsoe.geeklet.shell.plist',
                  '~/Library/Preferences/org.tynsoe.geektool3.plist',
                 ]
end
