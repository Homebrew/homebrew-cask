cask 'edm' do
  version '1.9.0'
  sha256 '583a2c9da395662ba1dd383a7b58d5ce3b7448bade2b1f9c0b798621a37a130a'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/product/enthought-deployment-manager'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
