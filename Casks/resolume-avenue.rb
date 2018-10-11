cask 'resolume-avenue' do
  version '6.0.11,60828'
  sha256 '5b377a9be3d132a8695635475f27f0cff505f2063255641848d9e4b7842a10f4'

  url "https://resolume.com/download/Resolume_Avenue_#{version.major_minor_patch.dots_to_underscores}_rev_#{version.after_comma}_Installer.dmg"
  appcast 'https://resolume.com/update/avenue_mac.xml'
  name 'Resolume Avenue'
  homepage 'https://resolume.com/'

  pkg 'Resolume Avenue Installer.pkg'

  uninstall pkgutil:   'com.resolume.pkg.ResolumeAvenue.*',
            delete:    "/Applications/Resolume Avenue #{version.major}",
            launchctl: 'com.resolume.avenue',
            signal:    ['TERM', 'com.resolume.avenue']

  zap pkgutil: [
                 'com.resolume.pkg.ResolumeDXV',
                 'com.resolume.pkg.ResolumeQuickLook',
               ]
end
