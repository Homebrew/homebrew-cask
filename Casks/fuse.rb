cask 'fuse' do
  version '0.33.1.10445'
  sha256 '6a80042d91772dc610063f513376069dd72e29d73613f867f30db4bf4fbaeb0c'

  # fuse-dl.azureedge.net was verified as official when first introduced to the cask
  url "https://fuse-dl.azureedge.net/releaseartifacts/fuse_osx_#{version.dots_to_underscores}.pkg"
  name 'Fuse Fusetools'
  homepage 'https://www.fusetools.com/'

  pkg "fuse_osx_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.fusetools.fuse'
end
