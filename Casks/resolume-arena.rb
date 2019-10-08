cask 'resolume-arena' do
  version '7.0.3,65832'
  sha256 '3f89cbe1fb0dd018d03365e928d93d070964db0a12071d93002777d36b12b8f6'

  url "https://resolume.com/download/Resolume_Arena_#{version.major_minor_patch.dots_to_underscores}_rev_#{version.after_comma}_Installer.dmg"
  appcast 'https://resolume.com/download/'
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
