cask :v1 => 'amazon-music' do
  version '3.6.0.361'
  sha256 '193bb6880d70a0b8407e0384e56dae10c209e5405a7d8807fdcd5a0368105eef'

  url 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/20141015/224318ebff/AmazonMusicInstaller.dmg'
  homepage 'https://www.amazon.com/gp/feature.html/ref=dm_mo_cpw_fb_lm?docId=1001067901'
  license :unknown    # todo: improve this machine-generated value

  installer :manual => 'Amazon Music Installer.app'
end
