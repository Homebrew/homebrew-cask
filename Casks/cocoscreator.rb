cask 'cocoscreator' do
  version '1.3.3_2016122003'
  sha256 'ed9e7cdfa4930b8509b13c0837f57f60f112b1791c0af4e284a415e66c5139cb'

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
