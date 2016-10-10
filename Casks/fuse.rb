cask 'fuse' do
  version '0.25.5.7677'
  sha256 '46d04eda67977476fe49a295d6d8b9b70db13fcb6b41cdc440b59c176f505892'

  # fuse-dl.azureedge.net was verified as official when first introduced to the cask
  url "https://fuse-dl.azureedge.net/releaseartifacts/fuse_osx_#{version.dots_to_underscores}.pkg"
  name 'Fuse Fusetools'
  homepage 'https://www.fusetools.com'

  pkg "fuse_osx_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.fusetools.fuse'
end
