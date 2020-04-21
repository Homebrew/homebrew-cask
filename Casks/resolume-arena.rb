cask 'resolume-arena' do
  version '7.1.2,69027'
  sha256 'e51b323630f652971e0515651df04518807690b5d290b4f9467456de0568865d'

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
