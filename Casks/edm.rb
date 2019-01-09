cask 'edm' do
  version '1.10.0'
  sha256 'e964de9da45f613963f416c10a12de0d8c7a89c70666287bbd5dcdd29c7cccb0'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/product/enthought-deployment-manager'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
