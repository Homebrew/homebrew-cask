cask 'edm' do
  version '1.9.2'
  sha256 '5c289a4b6e6b206d8d126984999b0edcb338d7c64ae4dede97213c492d461d31'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/product/enthought-deployment-manager'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
