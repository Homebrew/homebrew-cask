cask 'edm' do
  version '1.5.2'
  sha256 'a9376273add90b38410fa161831b3b4b4d82d576d664b58a9d8aa818b3280488'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/products/edm/'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
