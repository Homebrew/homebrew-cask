cask 'resolume-arena' do
  version '6.0.8.60887'
  sha256 '20308b7e5f012f9d98e22d5bdc666cb6e9e4329e8595ca05098267176995f284'

  url "https://resolume.com/download/Resolume_Arena_#{version.major_minor_patch.dots_to_underscores}_Installer.dmg"
  appcast 'https://resolume.com/update/arena_mac.xml',
          checkpoint: 'a03ed64480f9b12db4702d3977eda2bffd32b10b726281aeddc287df7288c3ad'
  name 'Resolume Arena'
  homepage 'https://resolume.com/'

  pkg 'Resolume Arena Installer.pkg'

  uninstall pkgutil: "com.resolume.pkg.ResolumeArena#{version.major}",
            delete:  "/Applications/Resolume Arena #{version.major}"
end
