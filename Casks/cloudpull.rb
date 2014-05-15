class Cloudpull < Cask
  url 'http://downloads.goldenhillsoftware.com/cloudpull/CloudPull.zip'
  appcast 'https://secure.goldenhillsoftware.com/updates/cloudpull/appcast.xml'
  homepage 'http://www.goldenhillsoftware.com/'
  version 'latest'
  sha256 :no_check
  link 'CloudPull.app'
end
