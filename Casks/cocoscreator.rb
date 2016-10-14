cask 'cocoscreator' do
  version '1.2.0_2016080301'
  sha256 '98bba2f8f78998c0c68917a8ad56d7f4105c36c0f2c150268a108b8e4f2f9388'

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
    FileUtils.chmod '+x', shimscript
  end

  zap delete: [
                '~/Library/Application Support/CocosCreator',
                '~/Library/Preferences/com.cocos.creator.plist',
                '~/Library/Preferences/com.cocos.apps.simulator.plist',
              ]
end
