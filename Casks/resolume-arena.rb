cask 'resolume-arena' do
  version '6.1.0,61231'
  sha256 'c336e94a6151dd3389622c8cce40349745fb843a6ccbd6daa3d55454d74f0f70'

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
