cask 'resolume-arena' do
  version '5.1.3'
  sha256 '8554e1ac9a011610c70e91552b46ddf30c12ad214ec1a892dbd6c1fef3035da6'

  # d19j6z4lvv1vde.cloudfront.net was verified as official when first introduced to the cask
  url "https://d19j6z4lvv1vde.cloudfront.net/Resolume_Arena_#{version.dots_to_underscores}_Installer.dmg"
  name 'Resolume Arena'
  homepage 'https://resolume.com/'

  pkg "Resolume Arena #{version} Installer.pkg"

  uninstall pkgutil: "com.resolume.pkg.ResolumeArena#{version.no_dots}",
            delete:  "/Applications/Resolume Arena #{version}"
end
