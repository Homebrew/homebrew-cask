cask 'resolume-arena' do
  version '6.1.2,62522'
  sha256 '17248656d9f04f57fed402da304dc0d942b6591a444f3a0149f2c5edbf83cc95'

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
