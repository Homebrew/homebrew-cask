cask 'resolume-arena' do
  version '6.0.11,61108'
  sha256 '9d9498dd9f4fb844b88e603399df3581367ac19a039eb4e4fd06c1884c411e35'

  url "https://resolume.com/download/Resolume_Arena_#{version.major_minor_patch.dots_to_underscores}_rev_#{version.after_comma}_Installer.dmg"
  appcast 'https://resolume.com/update/arena_mac.xml'
  name 'Resolume Arena'
  homepage 'https://resolume.com/'

  pkg 'Resolume Arena Installer.pkg'

  uninstall pkgutil:   'com.resolume.pkg.ResolumeArena.*',
            delete:    "/Applications/Resolume Arena #{version.major}",
            signal:    ['TERM', 'com.resolume.arena'],
            launchctl: 'com.resolume.arena'

  zap pkgutil: [
                 'com.resolume.pkg.ResolumeDXV',
                 'com.resolume.pkg.ResolumeQuickLook',
               ]
end
