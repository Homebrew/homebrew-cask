cask 'resolume-avenue' do
  version '6.0.4'
  sha256 'c0dd0a2b87094beaedf45cc12a7eafbeef3e04fc9d3016e8ff9c988b83d846ae'

  url "https://resolume.com/download/Resolume_Avenue_#{version.dots_to_underscores}_Installer.dmg"
  name 'Resolume Avenue'
  homepage 'https://resolume.com/'

  pkg 'Resolume Avenue Installer.pkg'

  uninstall pkgutil: 'com.resolume.pkg.ResolumeAvenue*'
end
