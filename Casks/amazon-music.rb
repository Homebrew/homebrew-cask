cask :v1 => 'amazon-music' do
  version '3.9.5.543'
  sha256 '845f19b0039a4dabf5661f8b8292d392b5d698ad591142bb52a9170df6e8644c'

  url 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/20150507/190803093e/AmazonMusicInstaller.dmg'
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
