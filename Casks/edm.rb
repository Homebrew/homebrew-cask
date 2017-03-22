cask 'edm' do
  version '1.5.0'
  sha256 '19e206c842402503af97455a04a9f12d0338c16905cf708f15bb5710cf9d5ab1'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/products/edm/'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
