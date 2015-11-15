cask :v1 => 'amazon-music' do
  version '3.11.3.833'
  sha256 '5249758b3e8b16bb94aee62484b9d86a1e0cdcf47b50c791d721d59c447088cf'

  url 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/20151029/212216bb9f/AmazonMusicInstaller.dmg'
  name 'Amazon Music'
  homepage 'https://www.amazon.com/gp/feature.html/ref=dm_mo_cpw_fb_lm?docId=1001067901'
  license :gratis

  installer :script => 'Amazon Music Installer.app/Contents/MacOS/osx-intel',
            :args => [ '--unattendedmodeui', 'none' ]

  uninstall :quit => [
              'com.amazon.music',
              'com.amazon.music-renderer'
            ],
            :delete => [
              '/Applications/Amazon Music.app'
            ]
end
