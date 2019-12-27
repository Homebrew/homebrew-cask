cask 'cocoscreator' do
  version '2.2.2,20191226'
  sha256 'dd16ab5ca60db740aa600ccf93b46e25fda382d28bb773652666ac497f3ad26e'

  url "https://digitalocean.cocos2d-x.org/CocosCreator/v#{version.before_comma}/CocosCreator_v#{version.before_comma}_#{version.after_comma}_mac.dmg"
  appcast 'https://cocos2d-x.org/download'
  name 'CocosCreator'
  homepage 'https://cocos2d-x.org/'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/cocos.wrapper.sh"

  app 'CocosCreator.app'
  binary shimscript, target: 'cocos'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      cd '#{appdir}/CocosCreator.app/Contents/Resources/cocos2d-x/tools/cocos2d-console/bin' && ./cocos "$@"
    EOS
  end

  zap trash: [
               '~/Library/Application Support/CocosCreator',
               '~/Library/Preferences/com.cocos.creator.plist',
               '~/Library/Preferences/com.cocos.apps.simulator.plist',
             ]
end
