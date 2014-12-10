cask :v1 => 'cloudpull' do
  version :latest
  sha256 :no_check

  url 'http://downloads.goldenhillsoftware.com/cloudpull/CloudPull.zip'
  appcast 'https://secure.goldenhillsoftware.com/updates/cloudpull/appcast.xml'
  homepage 'http://www.goldenhillsoftware.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'CloudPull.app'
end
