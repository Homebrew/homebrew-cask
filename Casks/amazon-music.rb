cask :v1 => 'amazon-music' do
  version '3.10.0.663'
  sha256 'b71c86dd0e2988ca4d914727c2c0226073c5717b5b80143b13c0f9619f11633c'

  url 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/20150721/0452501530/AmazonMusicInstaller.dmg'
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
