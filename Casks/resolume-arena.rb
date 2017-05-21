cask 'resolume-arena' do
  version '5.1.4'
  sha256 '9d867a61e2860df24cc06a102d43776616ebbdc563cfe1c97b68e755011efb74'

  # d19j6z4lvv1vde.cloudfront.net was verified as official when first introduced to the cask
  url "https://d19j6z4lvv1vde.cloudfront.net/Resolume_Arena_#{version.dots_to_underscores}_Installer.dmg"
  name 'Resolume Arena'
  homepage 'https://resolume.com/'

  pkg "Resolume Arena #{version} Installer.pkg"

  uninstall pkgutil: "com.resolume.pkg.ResolumeArena#{version.no_dots}",
            delete:  "/Applications/Resolume Arena #{version}"
end
