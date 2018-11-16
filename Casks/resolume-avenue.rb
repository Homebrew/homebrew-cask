cask 'resolume-avenue' do
  version '6.1.1,61422'
  sha256 '0d52f3df97cf82e7ba6929801becf62ec503b12c1d57262fdf2ab3d816ff32ac'

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
