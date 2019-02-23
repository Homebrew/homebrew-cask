cask 'cocoscreator' do
  version '2.0.8_20190210'
  sha256 '5968fd2ab35ffbad7d60c488e73e40ce64357193411f8defba6a53c149e5ef7b'

  url "https://digitalocean.cocos2d-x.org/CocosCreator/v#{version.split('_')[0]}/CocosCreator_v#{version}_mac.dmg"
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
