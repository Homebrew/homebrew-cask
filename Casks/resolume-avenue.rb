cask 'resolume-avenue' do
  version '6.1.2,62140'
  sha256 '51a09f16ae19f252c9486134039389fe638208eded7f407cf9cb233086fb3e50'

  url "https://resolume.com/download/Resolume_Avenue_#{version.major_minor_patch.dots_to_underscores}_rev_#{version.after_comma}_Installer.dmg"
  appcast 'https://resolume.com/update/avenue_mac.xml'
  name 'Resolume Avenue'
  homepage 'https://resolume.com/'

  pkg 'Resolume Avenue Installer.pkg'

  uninstall pkgutil:   [
                         'com.resolume.pkg.ResolumeAvenue.*',
                         'com.resolume.pkg.ResolumeDXV',
                         'com.resolume.pkg.ResolumeQuickLook',
                       ],
            delete:    "/Applications/Resolume Avenue #{version.major}",
            launchctl: 'com.resolume.avenue',
            signal:    ['TERM', 'com.resolume.avenue']

  zap pkgutil: [
                 'com.resolume.pkg.ResolumeDXV',
                 'com.resolume.pkg.ResolumeQuickLook',
               ]
end
