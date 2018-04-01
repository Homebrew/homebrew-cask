cask 'resolume-arena' do
  version '6.0.4'
  sha256 '246f6eb98184d7480450b708dfc48e9152ad9dc94fd0b659672e1c326b27fb99'

  url "https://resolume.com/download/Resolume_Arena_#{version.dots_to_underscores}_Installer.dmg"
  name 'Resolume Arena'
  homepage 'https://resolume.com/'

  pkg 'Resolume Arena Installer.pkg'

  uninstall pkgutil: "com.resolume.pkg.ResolumeArena#{version.major}",
            delete:  "/Applications/Resolume Arena #{version.major}"
end
