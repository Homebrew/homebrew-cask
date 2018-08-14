cask 'maccpuid' do
  version '3.0'
  sha256 '557aacebd0cd4b64a80d34060c6780d41cc235657a191d19c86934cc64728577'

  url "https://software.intel.com/sites/default/files/managed/7b/6f/maccpuid-#{version}.dmg"
  name 'MacCPUID'
  homepage 'https://software.intel.com/en-us/articles/download-maccpuid'

  app 'MacCPUID.app'

  zap trash: '~/Library/Caches/com.intel.MacCPUID'
end
