cask 'resolume-avenue' do
  version '4.6.4'
  sha256 'e6adfd60d07cfa025bd61c1047b4451c07407e1bf67746fa741952c3efbde7ae'

  # d19j6z4lvv1vde.cloudfront.net was verified as official when first introduced to the cask
  url "https://d19j6z4lvv1vde.cloudfront.net/Resolume_Avenue_#{version.dots_to_underscores}_Installer.dmg"
  name 'Resolume Avenue'
  homepage 'https://resolume.com/'

  pkg "Resolume Avenue #{version} Installer.pkg"

  uninstall pkgutil: 'com.resolume.pkg.ResolumeAvenue*'
end
