cask :v1 => 'cloudpull' do
  version '2.7.4_4042'
  sha256 'e923e94699d89c19d79e052633b671004464e264ab4fe44362f51b4a53274595'

  url "http://downloads.goldenhillsoftware.com/cloudpull/#{version.sub(%r{_.*},'')}/#{version.sub(%r{.*_},'')}/CloudPull.zip"
  appcast 'https://secure.goldenhillsoftware.com/updates/cloudpull/appcast.xml'
  name 'CloudPull'
  homepage 'http://www.goldenhillsoftware.com/'
  license :freemium

  app 'CloudPull.app'
end
