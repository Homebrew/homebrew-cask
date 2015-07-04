cask :v1 => 'resolume-avenue' do
  version '4.2.1'
  sha256 '996306b9ff0b4ec99e8b5338e8153c07e5ff194ae3ec7f350d791b8b336deb95'

  url 'http://download.resolume.com.s3.amazonaws.com/Resolume_Avenue_4_2_1_Installer.dmg'
  name 'Resolume'
  name 'Resolume Avenue'
  homepage 'https://resolume.com'
  license :freemium

  pkg 'Resolume Avenue 4.2.1 Installer.pkg'
  
  uninstall :pkgutil => 'com.resolume.*'

  
end
