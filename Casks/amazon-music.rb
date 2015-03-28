cask :v1 => 'amazon-music' do
  version '3.8.1.459'
  sha256 '05c0c246239496f8501108f744a9c293fbfc41e1aa31fc3953aa421c79c0e4f8'

  url 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/20150302/2218123c21/AmazonMusicInstaller.dmg'
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
