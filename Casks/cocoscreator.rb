cask 'cocoscreator' do
  version '2.0.5_2018110602'
  sha256 'c8ae621e693d1efcb4a67458c64f15598be9864bded85d2c5a7308038bf300c9'

  url "http://digitalocean.cocos2d-x.org/CocosCreator/v#{version.split('_')[0]}/CocosCreator_v#{version}_mac.dmg"
  name 'CocosCreator'
  homepage 'https://www.cocos2d-x.org/'

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
