class AmazonCloudPlayer < Cask
  url 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/AmazonCloudPlayerInstaller_108.dmg'
  homepage 'https://www.amazon.com/gp/feature.html/ref=dm_mo_cpw_fb_lm?docId=1001067901'
  version '1.08'
  sha256 '1383ecd5a65fc794c4faca9b6f0b2df3265f3d7d391137940267d85811086c95'
  caskroom_only true
  caveats do
    manual_installer 'Amazon Cloud Player Installer.app'
  end
end
