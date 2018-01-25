cask 'cellular' do
  version '0.0.8'
  sha256 '93b9d5a46e2e068f14f5af1c3220294615b607e0dcc1267ca42d58356d812170'

  # github.com/downloads/monofonik was verified as official when first introduced to the cask
  url "https://github.com/downloads/monofonik/cellular/Cellular-#{version}.dmg"
  name 'Cellular'
  homepage 'http://www.flipt.org/#cellular'

  suite 'Cellular'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/au.edu.monash.infotech.cellular.sfl*'
end
