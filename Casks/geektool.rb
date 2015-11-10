cask :v1 => 'geektool' do
  version '3.1.3'
  sha256 'f881d212dff433b302146ce3325cdcc79e73b8a7e871f9de8cd6d69173e33ec7'

  url "http://download.tynsoe.org/GeekTool-#{version}.zip"
  name 'GeekTool'
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
