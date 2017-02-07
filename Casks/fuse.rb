cask 'fuse' do
  version '0.32.0.9613'
  sha256 'beaee654da3e561d8745205fe3f464a6524e82fd4342fb0f4352a94943c55afa'

  # fuse-dl.azureedge.net was verified as official when first introduced to the cask
  url "https://fuse-dl.azureedge.net/releaseartifacts/fuse_osx_#{version.dots_to_underscores}.pkg"
  name 'Fuse Fusetools'
  homepage 'https://www.fusetools.com/'

  pkg "fuse_osx_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.fusetools.fuse'
end
