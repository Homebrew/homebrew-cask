cask 'edm' do
  version '1.8.2'
  sha256 '26aa760ed41c1cca68a37d673b11d2f364ad118e267631ff41b5e25b1df94486'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/product/enthought-deployment-manager'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
