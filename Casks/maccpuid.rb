cask 'maccpuid' do
  version '2.2'
  sha256 '9d645a0c7bc0e9b547ced80978c053c20d0e42ab822cac949f36b85f6ed19223'

  url "https://software.intel.com/sites/default/files/managed/b4/98/maccpuid-#{version}.dmg"
  name 'MacCPUID'
  homepage 'https://software.intel.com/en-us/articles/download-maccpuid'

  app 'MacCPUID.app'

  zap trash: '~/Library/Caches/com.intel.MacCPUID'
end
