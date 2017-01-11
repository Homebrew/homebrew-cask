cask 'edm' do
  version '1.4.0'
  sha256 '5b9b99d1908f8aa18bb5a3d737fb0fb62a6714176319cc659bf6aed505af6fac'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/products/edm/'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
