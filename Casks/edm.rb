cask 'edm' do
  version '1.6.1'
  sha256 '77c1b3439f57d4e7919212f02bddc0f3443cc712820cd855c277c1483a66dae1'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/products/edm/'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
