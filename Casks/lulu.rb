cask 'lulu' do
  version '0.9.1'
  sha256 '9896eb5c068646efc13d699ac1ef6e41e045fe9f58a89a0179eec8abb6a5be80'

  # github.com/objective-see/LuLu was verified as official when first introduced to the cask
  url "https://github.com/objective-see/LuLu/releases/download/#{version}/LuLu_#{version}.zip"
  appcast 'https://github.com/objective-see/LuLu/releases.atom',
          checkpoint: 'db36355bf419ecded8696c8b7c6cc455fe7b186960bd9f08ed3654ff6bc1043e'
  name 'LuLu'
  homepage 'https://objective-see.com/products/lulu.html'

  depends_on macos: '>= :sierra'

  installer script: {
                      executable: 'configure.sh',
                      args:       ['-install'],
                      sudo:       true,
                    }

  preflight do
    configure = "#{staged_path}/configure.sh"
    IO.write(configure, IO.read(configure).gsub('exit 1', 'exit 0'))
  end

  uninstall script: {
                      executable: 'configure.sh',
                      args:       ['-uninstall'],
                      sudo:       true,
                    }

  zap delete: [
                '/Library/Logs/LuLu.log',
                '~/Library/Caches/com.objective-see.luluHelper',
              ],
      trash:  '~/Library/Preferences/com.objective-see.lulu.plist'
end
