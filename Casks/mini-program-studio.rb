cask 'mini-program-studio' do
  version '0.70.11,3a39547a-067c-4536-a516-c8bf5e058c43'
  sha256 'd0d6413dafe5bf372340c5712702020881a6f60f85cac1887690476681829691'

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
