cask 'mini-program-studio' do
  version '1.0.9,8262916b-9310-49e9-83c6-3ba746dd6697'
  sha256 '0b1c78e94e42a3de8462b6fde180da6ff6739bb90c6cce3fd4df05469f495ba9'

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
