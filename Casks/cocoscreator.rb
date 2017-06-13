cask 'cocoscreator' do
  version '1.4.2_2017032901'
  sha256 '7b6853b8457543560ea4be8054ea5e155436ea5cee6a241b7731a9a1734b1da8'

  url "http://cdn.cocos2d-x.org/CocosCreator_v#{version}.dmg"
  name 'CocosCreator'
  homepage 'http://www.cocos2d-x.org/'

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/cocos.wrapper.sh"

  app 'CocosCreator.app'
  binary shimscript, target: 'cocos'

  preflight do
    IO.write shimscript, <<-EOS.undent
      #!/bin/sh
      cd '#{appdir}/CocosCreator.app/Contents/Resources/cocos2d-x/tools/cocos2d-console/bin' && ./cocos "$@"
    EOS
  end

  zap delete: [
                '~/Library/Application Support/CocosCreator',
                '~/Library/Preferences/com.cocos.creator.plist',
                '~/Library/Preferences/com.cocos.apps.simulator.plist',
              ]
end
