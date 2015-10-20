cask :v1 => 'amazon-music' do
  version '3.11.1.769'
  sha256 '1864a448dbcb37a7f93537cfeab105a5c44a3ff303bf7dd80f2653c458f43eac'

  url 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/20150930/013417ee51/AmazonMusicInstaller.dmg'
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
