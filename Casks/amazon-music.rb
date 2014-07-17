class AmazonMusic < Cask
  version '3.0'
  sha256 '77a402077ae3f43aafa5433f7b26017643080a73fa0ad49953dedbeaca09574a'

  url 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/20140702/064904ec21/AmazonMusicInstaller.dmg'
  homepage 'https://www.amazon.com/gp/feature.html/ref=dm_mo_cpw_fb_lm?docId=1001067901'

  caskroom_only true

  after_install do
    system '/usr/bin/sudo', '-E', '--',
      "#{destination_path}/Amazon Music Installer.app/Contents/MacOS/osx-intel"
  end
end
