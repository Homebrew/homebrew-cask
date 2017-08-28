cask 'edm' do
  version '1.7.1'
  sha256 'cf205c429b5537cee33d4790a2760d87a78f6926ee66a2a1f2b99393f566d5ea'

  url "https://package-data.enthought.com/edm/osx_x86_64/#{version.major_minor}/edm_#{version}.pkg"
  name 'Enthought Deployment Manager'
  name 'EDM'
  homepage 'https://www.enthought.com/product/enthought-deployment-manager'

  pkg "edm_#{version}.pkg"

  uninstall pkgutil: 'com.edm.edm'
end
