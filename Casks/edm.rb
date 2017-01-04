cask 'edm' do
  version '1.3.0'
  sha256 '1505ed1823074c1df8834bc631a1da8cfe03e20ba6feeea1e01244cb430fb5e0'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/products/edm/'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
