cask 'geektool' do
  version '331.014,1470733752'
  sha256 '73cbb2361601048c7f4d05a6717e53e83b088d49ac75309b2f8e4dccc17df63c'

  # dl.devmate.com/org.tynsoe.GeekTool was verified as official when first introduced to the cask
  url "https://dl.devmate.com/org.tynsoe.GeekTool/#{version.before_comma}/#{version.after_comma}/GeekTool-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/org.tynsoe.GeekTool.xml',
          checkpoint: '919a693af08a23afe84ce132c390c4b05629d91f607f72d8c1af641d418efced'
  name 'GeekTool'
  homepage 'https://www.tynsoe.org/v2/geektool/'

  app 'GeekTool.app'

  zap trash: [
               '~/Library/Preferences/org.tynsoe.GeekTool.plist',
               '~/Library/Preferences/org.tynsoe.geeklet.file.plist',
               '~/Library/Preferences/org.tynsoe.geeklet.image.plist',
               '~/Library/Preferences/org.tynsoe.geeklet.shell.plist',
               '~/Library/Preferences/org.tynsoe.geektool3.plist',
             ]
end
