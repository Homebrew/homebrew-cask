cask 'resolume-avenue' do
  version '6.0.9'
  sha256 '6a231157fa631fef4568d29b18248eefe0c6aaadebfe87b3fabfb992b88f1944'

  # dd5sgwxv3xok.cloudfront.net was verified as official when first introduced to the cask
  url "https://dd5sgwxv3xok.cloudfront.net/Resolume_Avenue_#{version.dots_to_underscores}_Installer.dmg"
  appcast 'https://resolume.com/update/avenue_mac.xml'
  name 'Resolume Avenue'
  homepage 'https://resolume.com/'

  pkg 'Resolume Avenue Installer.pkg'

  uninstall pkgutil: 'com.resolume.pkg.Resolume*'
end
