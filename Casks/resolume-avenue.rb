cask 'resolume-avenue' do
  version '6.1.3,63134'
  sha256 'e82312bc10d274d53bf10024ac36e67590cf13b05345a5beadb7db90f51e74b6'

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
