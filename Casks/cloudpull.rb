class Cloudpull < Cask
  version 'latest'
  sha256 :no_check

  url 'http://downloads.goldenhillsoftware.com/cloudpull/CloudPull.zip'
  appcast 'https://secure.goldenhillsoftware.com/updates/cloudpull/appcast.xml'
  homepage 'http://www.goldenhillsoftware.com/'

  link 'CloudPull.app'
end
