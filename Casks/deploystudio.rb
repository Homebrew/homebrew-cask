cask 'deploystudio' do
  version '1.7.7'
  sha256 '9c21ce8e325b7ed5a244e1830244f10f8a09180030eaca8fb28a429e0a532d09'

  url "http://www.deploystudio.com/Downloads/DeployStudioServer_v#{version}.dmg"
  name 'DeployStudio Server'
  homepage 'http://www.deploystudio.com/'

  pkg "DeployStudioServer_v#{version}.mpkg"

  uninstall pkgutil: [
                       'com.deploystudio.admin.pkg',
                       'com.deploystudio.prefpanel.pkg',
                       'com.deploystudio.replica.sync.pkg',
                     ]
end
