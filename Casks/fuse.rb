cask 'fuse' do
  version '0.23.0.7041'
  sha256 'dae0500a33b17866152fe1ddca4cd0327f6f6f6cbf0040ad7aa511cbda8f32ff'

  # fuse-dl.azureedge.net was verified as official when first introduced to the cask
  url "https://fuse-dl.azureedge.net/releaseartifacts/fuse_osx_#{version.dots_to_underscores}.pkg"
  name 'Fuse Fusetools'
  homepage 'https://www.fusetools.com'
  license :closed

  pkg "fuse_osx_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.fusetools.fuse'
end
