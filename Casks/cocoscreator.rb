cask 'cocoscreator' do
  version '2.3.0,20200215'
  sha256 '83a4c7619f3d7175ced36f561ba906fc4e027043406950f2f5e1c39f7ca3e075'

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
