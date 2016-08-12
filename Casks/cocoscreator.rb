cask 'cocoscreator' do
  version '1.2.0'
  sha256 '98bba2f8f78998c0c68917a8ad56d7f4105c36c0f2c150268a108b8e4f2f9388'

  # appget.cn was verified as official when first introduced to the cask
  url 'http://cocostudio.download.appget.cn/CocosCreator/v1.2.0/CocosCreator_v1.2.0_2016080301.dmg'
  name 'CocosCreator'
  homepage 'http://www.cocos2d-x.org/'
  license :mit

  app 'CocosCreator.app'
  binary "#{appdir}/CocosCreator.app/Contents/Resources/cocos2d-x/tools/cocos2d-console/bin/cocos", target: 'cocos'

  zap delete: [
                '~/Library/Application Support/CocosCreator',
                '~/Library/Preferences/com.cocos.creator.plist',
                '~/Library/Preferences/com.cocos.apps.simulator.plist',
              ]
end
