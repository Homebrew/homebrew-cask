cask 'deploystudio' do
  version '1.7.6'
  sha256 '3e19105d83ccb3a420ccb50ab41ec50965ff3d75c499f72a68c630ce13cfede9'

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
