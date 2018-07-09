cask 'resolume-avenue' do
  version '6.0.10'
  sha256 'e7108e74286796dfd78a4387a38efd75fc7ab6b38650b3490b2e6b8fed763c9d'

  # dd5sgwxv3xok.cloudfront.net was verified as official when first introduced to the cask
  url "https://dd5sgwxv3xok.cloudfront.net/Resolume_Avenue_#{version.dots_to_underscores}_Installer.dmg"
  appcast 'https://resolume.com/update/avenue_mac.xml'
  name 'Resolume Avenue'
  homepage 'https://resolume.com/'

  pkg 'Resolume Avenue Installer.pkg'

  uninstall pkgutil: [
                       "com.resolume.pkg.ResolumeAvenue#{version.major}",
                       'com.resolume.pkg.ResolumeDXV',
                       'com.resolume.pkg.ResolumeQuickLook',
                     ]
end
