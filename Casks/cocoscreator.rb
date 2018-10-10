cask 'cocoscreator' do
  version '2.0.1,20180823'
  sha256 '1738ace990ff863f0cc757e949b27c513625d71827c0c6ecda1a97b0e12b0e47'

  # download.cocos.com was verified as official when first introduced to the cask
  url "http://download.cocos.com/CocosCreator/v#{version.before_comma}/CocosCreator_v#{version.before_comma}_#{version.after_comma}.dmg"
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
