cask 'edm' do
  version '1.8.3'
  sha256 '40812c29030fea67f29ce646b7488f94697e8b8680dcd9be80d9b0f9253ac3aa'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/product/enthought-deployment-manager'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
