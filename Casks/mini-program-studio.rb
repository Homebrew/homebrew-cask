cask 'mini-program-studio' do
  version '0.32.3,fb1fa267-f96a-481d-9c17-0a33e48f04f3'
  sha256 'a9a3fab00dc5a53b9e1ea54fdd3259b182fd74a8bf066ebbdc08b0b01f63d678'

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
