cask 'edm' do
  version '1.6.0'
  sha256 'bd58c572077174b3c9cc7581fd4f88fb9e5e8f80052a9194c2a8a7da518f7e64'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/products/edm/'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
