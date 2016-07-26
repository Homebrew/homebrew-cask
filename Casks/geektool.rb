cask 'geektool' do
  version '330.006,1469399034'
  sha256 '2f8cae65837dd349c8a0a057e2dd6532e5c62a4868af8c13b8ad5597e9d84500'

  # dl.devmate.com/org.tynsoe.GeekTool was verified as official when first introduced to the cask
  url "https://dl.devmate.com/org.tynsoe.GeekTool/#{version.before_comma}/#{version.after_comma}/GeekTool-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/org.tynsoe.GeekTool.xml',
          checkpoint: '760c8a6d2b95cd5d981f539efe396e03dcaac358bc0f8a86d52a67aaa2be5003'
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
