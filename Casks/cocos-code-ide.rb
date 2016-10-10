cask 'cocos-code-ide' do
  version '1.2.0'
  sha256 'b588d3d7993204d0828ee954eabab09824f66dfc44c8fc3d6fe774ed8b25a23e'

  url "http://www.cocos2d-x.org/filedown/cocos-code-ide-mac64-#{version}.dmg"
  name 'Cocos Code IDE'
  homepage 'http://www.cocos2d-x.org'

  app 'Cocos Code IDE.app'

  zap delete: [
                '~/Library/Caches/org.cocos.platform.ide',
                '~/Library/Saved Application State/org.cocos.platform.ide.savedState',
                '~/Library/Preferences/org.cocos.platform.ide.plist',
              ]
end
