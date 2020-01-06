cask 'mini-program-studio' do
  version '1.1.8,cbd250a0-cf85-4ca7-aa8a-a0094db2ab6a'
  sha256 'ea4333adf09a8b953c311f75813799e34bc34dc12b3dda7cbeaf059c09985357'

  # gw.alipayobjects.com was verified as official when first introduced to the cask
  url "https://gw.alipayobjects.com/os/volans-demo/#{version.after_comma}/#{version.before_comma}/MiniProgramStudio-#{version.before_comma}.dmg"
  name 'Mini Program Studio'
  name '小程序开发者工具'
  homepage 'https://open.alipay.com/channel/miniIndex.htm'

  app '小程序开发者工具.app'

  zap trash: [
               '~/Library/Application Support/小程序开发者工具',
               '~/Library/Preferences/com.ant.miniprogram.plist',
               '~/Library/Saved Application State/com.ant.miniprogram.savedState',
             ]
end
