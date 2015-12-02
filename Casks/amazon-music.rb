cask :v1 => 'amazon-music' do
  version '20151118_201234b234'
  sha256 '4d16ba59486118c5b1180cbfaef7570cc814c2773aa83ea980af7ed5c4108ca7'

  url "https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/#{version.sub(%r{_.*},'')}/#{version.sub(%r{.*_},'')}/AmazonMusicInstaller.dmg"
  name 'Amazon Music'
  homepage 'http://www.amazon.com/gp/feature.html/?ie=UTF8&docId=1001067901'
  license :gratis

  installer :script => 'Amazon Music Installer.app/Contents/MacOS/osx-intel',
            :args => [ '--unattendedmodeui', 'none' ],
            :sudo => true

  uninstall :quit => [
              'com.amazon.music',
              'com.amazon.music-renderer'
            ],
            :delete => [
              '/Applications/Amazon Music.app'
            ],
            :launchctl => 'com.amazon.music'

  zap :delete => [
                  '~/Library/Preferences/com.amazon.music.plist',
                  '~/Library/Application Support/Amazon Music/'
                ]
end
