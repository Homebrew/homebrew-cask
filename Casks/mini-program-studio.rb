cask 'mini-program-studio' do
  version '0.40.4,05647aea-1185-4a78-9db5-02989f0d6414'
  sha256 '2e8ca3944327c730a50819f8b1be62a4fa9d7cf1d0483c202db3eef03ba50a62'

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
