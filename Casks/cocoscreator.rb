cask 'cocoscreator' do
  version '2.3.1,20200303'
  sha256 'c56245de443cf079f6d4ac2a84aa3877acf658aba5a21b4cb7d8488d843f4414'

  url "https://download.cocos.com/CocosCreator/v#{version.before_comma}/CocosCreator_v#{version.before_comma}_#{version.after_comma}_mac.dmg"
  appcast 'https://www.cocos.com/creator'
  name 'CocosCreator'
  homepage 'https://www.cocos.com/'

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
