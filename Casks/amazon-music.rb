class AmazonMusic < Cask
  version '3.2'
  sha256 'fc003860aceaa3cb4200d9f4e66794fda654dd1db4fa646a88e79502547728a3'

  url 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/20140722/2032026e85/AmazonMusicInstaller.dmg'
  homepage 'https://www.amazon.com/gp/feature.html/ref=dm_mo_cpw_fb_lm?docId=1001067901'

  caskroom_only true

  after_install do
    system '/usr/bin/sudo', '-E', '--',
      "#{destination_path}/Amazon Music Installer.app/Contents/MacOS/osx-intel"
  end
end
