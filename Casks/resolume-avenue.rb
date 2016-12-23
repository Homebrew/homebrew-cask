cask 'resolume-avenue' do
  version '4.6.2'
  sha256 '0dfe3f28308c05dd180619071b87256333f00b2f3a19e1a2b9ea1fa649c74451'

  # d19j6z4lvv1vde.cloudfront.net was verified as official when first introduced to the cask
  url "https://d19j6z4lvv1vde.cloudfront.net/Resolume_Avenue_#{version.dots_to_underscores}_Installer.dmg"
  name 'Resolume Avenue'
  homepage 'https://resolume.com/'

  pkg "Resolume Avenue #{version} Installer.pkg"

  uninstall pkgutil: 'com.resolume.pkg.ResolumeAvenue*'
end
