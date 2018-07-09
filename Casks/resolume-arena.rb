cask 'resolume-arena' do
  version '6.0.10'
  sha256 'e7279853a3605fdc8d426f0ad2ded4ee4dcdfb968cb8fd30aae6ee621de46231'

  url "https://resolume.com/download/Resolume_Arena_#{version.major_minor_patch.dots_to_underscores}_Installer.dmg"
  appcast 'https://resolume.com/update/arena_mac.xml'
  name 'Resolume Arena'
  homepage 'https://resolume.com/'

  pkg 'Resolume Arena Installer.pkg'

  uninstall pkgutil: "com.resolume.pkg.ResolumeArena#{version.major}",
            delete:  "/Applications/Resolume Arena #{version.major}"

  zap pkgutil: [
                 'com.resolume.pkg.ResolumeDXV',
                 'com.resolume.pkg.ResolumeQuickLook',
               ]
end
