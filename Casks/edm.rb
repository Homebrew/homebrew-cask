cask 'edm' do
  version '1.4.1'
  sha256 '83f567221c71602d498dd26c09d3c0c31bee61d6687416a6335d1836ed3fcd4b'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/products/edm/'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
