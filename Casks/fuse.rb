cask 'fuse' do
  version '0.36.0.11838'
  sha256 '0abda27b6020dee30a3e146c3c0cc100e5b3772ccbc9ff1edf5a16e642014a2c'

  # fuse-dl.azureedge.net was verified as official when first introduced to the cask
  url "https://fuse-dl.azureedge.net/releaseartifacts/fuse_osx_#{version.dots_to_underscores}.pkg"
  name 'Fuse Fusetools'
  homepage 'https://www.fusetools.com/'

  pkg "fuse_osx_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.fusetools.fuse'
end
