cask 'antdevtools' do
  version '0.20.1,63d9b84e-bbcf-4a00-9427-0bb3f713c769'
  sha256 '4c9e207838ad0f7c6159d4ebd8c828d54b1aec28622a9f67f4f4bd0acf93664a'

  # gw.alipayobjects.com was verified as official when first introduced to the cask
  url "https://gw.alipayobjects.com/os/Ant-devtools-Release/#{version.after_comma}/#{version.major}_#{version.minor}_#{version.patch}/AntDevtools.dmg"
  name 'Ant Devtools'
  name '蚂蚁开发者工具'
  homepage 'https://mini.open.alipay.com/channel/miniIndex.htm'

  app '蚂蚁开发者工具.app'

  zap trash: [
               '~/Library/Application Support/蚂蚁开发者工具',
               '~/Library/Preferences/com.ant.tiny.helper.plist',
               '~/Library/Preferences/com.ant.tiny.plist',
               '~/Library/Saved Application State/com.ant.tiny.savedState',
             ]
end
