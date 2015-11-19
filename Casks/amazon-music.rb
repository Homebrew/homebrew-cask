cask :v1 => 'amazon-music' do
  version '20151029_212216bb9f'
  sha256 '5249758b3e8b16bb94aee62484b9d86a1e0cdcf47b50c791d721d59c447088cf'

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
