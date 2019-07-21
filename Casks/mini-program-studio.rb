cask 'mini-program-studio' do
  version '0.41.2,ae6e84fb-725c-4525-8fe0-71728b89f1f3'
  sha256 '2a62c16a1cc7599ab9612b6894482a3264d07929efede3b43d49b2ac44664722'

  # gw.alipayobjects.com was verified as official when first introduced to the cask
  url "https://gw.alipayobjects.com/os/volans-demo/#{version.after_comma}/#{version.before_comma}/MiniProgramStudio-#{version.before_comma}.pkg"
  name 'Mini Program Studio'
  name '小程序开发者工具'
  homepage 'https://open.alipay.com/channel/miniIndex.htm'

  pkg "MiniProgramStudio-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.ant.miniprogram'

  zap trash: [
               '~/Library/Application Support/小程序开发者工具',
               '~/Library/Preferences/com.ant.tiny.helper.plist',
               '~/Library/Preferences/com.ant.miniprogram.helper.plist',
               '~/Library/Preferences/com.ant.miniprogram.plist',
               '~/Library/Preferences/com.ant.miniprogram.plist',
               '~/Library/Saved Application State/com.ant.miniprogram.savedState',
               '~/Library/Saved Application State/com.ant.tiny.savedState',
             ]
end
