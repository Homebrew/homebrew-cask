cask 'rocketcake' do
  version '1.3'
  sha256 '095f849e432cd5c4400bca78e8cdc41d2671459f274df77c5842f384bd57bbad'

  # ambiera.at was verified as official when first introduced to the cask
  url "http://www.ambiera.at/downloads/RocketCake-#{version.major_minor}.dmg"
  appcast 'http://www.ambiera.com/rocketcake/download.html',
          checkpoint: '721ccdf968e0f10fb0f0c63f28eda00eae46705962d312e3f86753c72efbb2d7'
  name 'RocketCake'
  homepage 'http://www.ambiera.com/rocketcake/index.html'

  app 'RocketCake.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ambiera.rocketcake.sfl'
end
