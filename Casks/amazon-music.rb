class AmazonMusic < Cask
  version '3.0'
  sha256 'e058212d7064bd4c557a22225293d0a3a4156fd42d5172700e502b5e685c8cb2'

  url 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/20140604/025610578b/AmazonMusicInstaller.dmg'
  homepage 'https://www.amazon.com/gp/feature.html/ref=dm_mo_cpw_fb_lm?docId=1001067901'

  caskroom_only true

  after_install do
    system '/usr/bin/sudo', '-E', '--',
      "#{destination_path}/Amazon Music Installer.app/Contents/MacOS/osx-intel"
  end
end
