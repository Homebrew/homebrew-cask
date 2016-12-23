cask 'resolume-arena' do
  version '5.1.2'
  sha256 'ca035bf4649e87010e010f9f394b60579047ea925978114831fffb874126a95d'

  # d19j6z4lvv1vde.cloudfront.net was verified as official when first introduced to the cask
  url "https://d19j6z4lvv1vde.cloudfront.net/Resolume_Arena_#{version.dots_to_underscores}_Installer.dmg"
  name 'Resolume Arena'
  homepage 'https://resolume.com/'

  pkg "Resolume Arena #{version} Installer.pkg"

  uninstall pkgutil: 'com.resolume.pkg.ResolumeArena*'
end
