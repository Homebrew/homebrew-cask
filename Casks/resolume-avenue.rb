cask 'resolume-avenue' do
  version '4.2.1'
  sha256 '996306b9ff0b4ec99e8b5338e8153c07e5ff194ae3ec7f350d791b8b336deb95'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://download.resolume.com.s3.amazonaws.com/Resolume_Avenue_#{version.gsub('.', '_')}_Installer.dmg"
  name 'Resolume Avenue'
  homepage 'https://resolume.com'
  license :freemium

  pkg "Resolume Avenue #{version} Installer.pkg"

  uninstall pkgutil: 'com.resolume.*'
end
