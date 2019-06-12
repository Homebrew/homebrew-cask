cask 'mblock' do
  version '5.0.1'
  sha256 'fcf814848d47f0c383354870358bf44a375da32f71d35046c5542650769ec4ca'

  # dl.makeblock.com was verified as official when first introduced to the cask
  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.pkg"
  appcast 'http://www.mblock.cc/mblock-software/'
  name 'mBlock'
  homepage 'https://www.mblock.cc/'

  pkg "V#{version}.pkg"

  uninstall pkgutil: 'mblock.pkg'
end
