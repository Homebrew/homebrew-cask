cask 'choosy' do
  version '1.1'
  sha256 'c6530d4e0dddbf47c6a8999bda8f3a5ef1857f4481b9325e56cfe00f05b2022c'

  url "https://downloads.choosyosx.com/choosy_#{version}.zip"
  appcast 'https://www.choosyosx.com/sparkle/feed',
          checkpoint: '588d73c48a23dc024ddd2b16029e989a731c7c53012bc87e46fb66fb8b807d95'
  name 'Choosy'
  homepage 'https://www.choosyosx.com/'

  prefpane 'Choosy.prefPane'
end
