cask 'mblock' do
  version '5.0.1'
  sha256 'eca927eea3673d7ee236394c0c0f4da8d630f4aa94f3bc30815ba781f1088c92'

  # dl.makeblock.com was verified as official when first introduced to the cask
  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.pkg"
  appcast 'https://www.mblock.cc/mblock-software/'
  name 'mBlock'
  homepage 'https://www.mblock.cc/'

  pkg "V#{version}.pkg"

  uninstall pkgutil: 'com.makeblock.pkg.mblock'
end
