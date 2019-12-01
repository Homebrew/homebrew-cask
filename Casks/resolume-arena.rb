cask 'resolume-arena' do
  version '7.0.5,67117'
  sha256 '11d0c9149ff4c21d2b5234d188fba3eb34e8cad3b7557f385896797ee9615f33'

  url "https://resolume.com/download/Resolume_Arena_#{version.major_minor_patch.dots_to_underscores}_rev_#{version.after_comma}_Installer.dmg"
  appcast 'https://resolume.com/download/'
  name 'Resolume Arena'
  homepage 'https://resolume.com/'

  pkg 'Resolume Arena Installer.pkg'

  uninstall pkgutil:   [
                         'com.resolume.pkg.ResolumeArena.*',
                         'com.resolume.pkg.ResolumeDXV',
                         'com.resolume.pkg.ResolumeQuickLook',
                       ],
            delete:    "/Applications/Resolume Arena #{version.major}",
            signal:    ['TERM', 'com.resolume.arena'],
            launchctl: 'com.resolume.arena'

  zap pkgutil: [
                 'com.resolume.pkg.ResolumeDXV',
                 'com.resolume.pkg.ResolumeQuickLook',
               ]
end
