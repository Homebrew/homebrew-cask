cask 'cocoscreator' do
  version '2.1.3_20190917'
  sha256 '9883df1b585b2c738fb608fad353a773018a68e10eda41ade3a13cf6c1bfd74d'

  url "https://digitalocean.cocos2d-x.org/CocosCreator/v#{version.split('_')[0]}/CocosCreator_v#{version}_mac.dmg"
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
