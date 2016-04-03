cask 'geektool' do
  version '3.1.9'
  sha256 'b8f4584b43816b3c96ac6f0224a679242f84999b06074f35500607874335ae6c'

  url 'https://dl.devmate.com/org.tynsoe.GeekTool/GeekTool.zip'
  name 'GeekTool'
  homepage 'http://projects.tynsoe.org/en/geektool/'
  license :mit

  app 'GeekTool.app'

  zap delete: [
                '~/Library/Preferences/org.tynsoe.GeekTool.plist',
                '~/Library/Preferences/org.tynsoe.geeklet.file.plist',
                '~/Library/Preferences/org.tynsoe.geeklet.image.plist',
                '~/Library/Preferences/org.tynsoe.geeklet.shell.plist',
                '~/Library/Preferences/org.tynsoe.geektool3.plist',
              ]
end
