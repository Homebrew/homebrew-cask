cask 'deploystudio' do
  version '1.7.8'
  sha256 'a7d71ed8e72498c8f7b37349458afd0cd74ba7a95313f26ea1ba05f4d1362071'

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
