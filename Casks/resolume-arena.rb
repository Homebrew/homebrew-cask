cask 'resolume-arena' do
  version '6.0.7'
  sha256 'bfebbfde003956039e04193564a6b46210915a50df3b39c31c6e20f5044eb1b3'

  url "https://resolume.com/download/Resolume_Arena_#{version.dots_to_underscores}_Installer.dmg"
  appcast 'https://resolume.com/update/arena_mac.xml',
          checkpoint: '405163af69fd9f5a822ed6ae985e07739e97ba13b54c72c7fd129602eb1a98cb'
  name 'Resolume Arena'
  homepage 'https://resolume.com/'

  pkg 'Resolume Arena Installer.pkg'

  uninstall pkgutil: "com.resolume.pkg.ResolumeArena#{version.major}",
            delete:  "/Applications/Resolume Arena #{version.major}"
end
