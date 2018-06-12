cask 'resolume-avenue' do
  version '6.0.8.60677'
  sha256 'f6f45145d66966ad29ac1e0d0a8e1ae28f73cb94b6005cca47724e99ede284de'

  url "https://resolume.com/download/Resolume_Avenue_#{version.major_minor_patch.dots_to_underscores}_Installer.dmg"
  appcast 'https://resolume.com/update/avenue_mac.xml'
  name 'Resolume Avenue'
  homepage 'https://resolume.com/'

  pkg 'Resolume Avenue Installer.pkg'

  uninstall pkgutil: 'com.resolume.pkg.ResolumeAvenue*'
end
