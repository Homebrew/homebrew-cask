cask 'cocoscreator' do
  version '1.9.1,20180417'
  sha256 '9d848ce4af7dfb84974bd24db36bdb766620c4e0eb81aaaa0eaccf122e3bdc66'

  # download.cocos.com was verified as official when first introduced to the cask
  url "http://download.cocos.com/CocosCreator/v#{version.before_comma}/CocosCreator_v#{version.before_comma}_#{version.after_comma}.dmg"
  name 'CocosCreator'
  homepage 'http://www.cocos2d-x.org/'

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
