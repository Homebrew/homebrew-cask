cask 'geektool' do
  version '319.004,1457490390'
  sha256 'b8f4584b43816b3c96ac6f0224a679242f84999b06074f35500607874335ae6c'

  # dl.devmate.com/org.tynsoe.GeekTool was verified as official when first introduced to the cask
  url "https://dl.devmate.com/org.tynsoe.GeekTool/#{version.before_comma}/#{version.after_comma}/GeekTool-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/org.tynsoe.GeekTool.xml',
	  checkpoint: '6834d4c329b703053afe025d07b19c06d916081b0df5509e98bec6d9a16ed343'
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
