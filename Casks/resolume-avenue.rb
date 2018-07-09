cask 'resolume-avenue' do
  version '6.0.10'
  sha256 'e7108e74286796dfd78a4387a38efd75fc7ab6b38650b3490b2e6b8fed763c9d'

  url "https://resolume.com/download/Resolume_Avenue_#{version.major_minor_patch.dots_to_underscores}_Installer.dmg"
  appcast 'https://resolume.com/update/avenue_mac.xml'
  name 'Resolume Avenue'
  homepage 'https://resolume.com/'

  pkg 'Resolume Avenue Installer.pkg'

  uninstall pkgutil: "com.resolume.pkg.ResolumeAvenue#{version.major}",
            delete:  "/Applications/Resolume Avenue #{version.major}"

  zap trash: [
               'com.resolume.pkg.ResolumeDXV',
               'com.resolume.pkg.ResolumeQuickLook',
             ]
end
