cask 'edm' do
  version '1.5.1'
  sha256 'fe8222854c47e21a1d79e3649f0f2f26830ab7a9314d3131885c80a956f03556'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/products/edm/'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
