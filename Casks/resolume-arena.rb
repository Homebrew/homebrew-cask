cask 'resolume-arena' do
  version '6.0.1'
  sha256 '2f9009709aeccd5ef76dd63e7eff7602f110dccb25fbb0e9ea4bffb082bc60c9'

  # d19j6z4lvv1vde.cloudfront.net was verified as official when first introduced to the cask
  url "https://d19j6z4lvv1vde.cloudfront.net/Resolume_Arena_#{version.dots_to_underscores}_Installer.dmg"
  name 'Resolume Arena'
  homepage 'https://resolume.com/'

  pkg 'Resolume Arena Installer.pkg'

  uninstall pkgutil: "com.resolume.pkg.ResolumeArena#{version.major}",
            delete:  "/Applications/Resolume Arena #{version.major}"
end
