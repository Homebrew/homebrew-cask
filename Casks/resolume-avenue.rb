cask 'resolume-avenue' do
  version '6.0.1'
  sha256 '0c09ba4f28d227d487153e9f2a93895f2a053ea51a9b5dffb95f348008aa8a3a'

  # d19j6z4lvv1vde.cloudfront.net was verified as official when first introduced to the cask
  url "https://d19j6z4lvv1vde.cloudfront.net/Resolume_Avenue_#{version.dots_to_underscores}_Installer.dmg"
  name 'Resolume Avenue'
  homepage 'https://resolume.com/'

  pkg 'Resolume Avenue Installer.pkg'

  uninstall pkgutil: 'com.resolume.pkg.ResolumeAvenue*'
end
