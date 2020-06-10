cask 'mini-program-studio' do
  version '1.12.15,4c941991-72ec-4488-b489-04c0610f9c62'
  sha256 'a815766442ef5f0ad5b20c9b7b771a9bc0bb8b5b2e679e034997eb41f5916d9b'

  # gw.alipayobjects.com/ was verified as official when first introduced to the cask
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
