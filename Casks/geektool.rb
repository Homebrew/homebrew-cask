cask 'geektool' do
  version '320.23,1468354898'
  sha256 '21f51ea73c5e552613a432f534dafe8eb31d118db18a4f3094adaceedbd827f5'

  # dl.devmate.com/org.tynsoe.GeekTool was verified as official when first introduced to the cask
  url "https://dl.devmate.com/org.tynsoe.GeekTool/#{version.before_comma}/#{version.after_comma}/GeekTool-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/org.tynsoe.GeekTool.xml',
          checkpoint: 'e32e33786907cd3857f0694a84f0c5ea916b921e03413b16c8711575336042bd'
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
