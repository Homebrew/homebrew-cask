cask 'mini-program-studio-dmg' do
  version '0.60.13,98749a98-f00e-4b5c-a5cf-b8e122ba6378'
  sha256 '71fefcc6ab1114faf861c23d1d5177e9cce033e4c2449a8a1c51a0897cec83ca'

  # gw.alipayobjects.com was verified as official when first introduced to the cask
  url "https://gw.alipayobjects.com/os/volans-demo/#{version.after_comma}/#{version.before_comma}/MiniProgramStudio-#{version.before_comma}.dmg"
  name 'Mini Program Studio'
  name '小程序开发者工具'
  homepage 'https://open.alipay.com/channel/miniIndex.htm'

  conflicts_with cask: 'mini-program-studio'

  app '小程序开发者工具.app'

  zap trash: [
               '~/Library/Application Support/小程序开发者工具',
               '~/Library/Preferences/com.ant.miniprogram.plist',
               '~/Library/Saved Application State/com.ant.miniprogram.savedState',
             ]
end
