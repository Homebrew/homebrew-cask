cask 'rocketcake' do
  version '1.2'
  sha256 '2535d9ca55e527e3e783c82c10ab060d0c35f1da2c6bbce5d8a4f003567c4eb8'

  # ambiera.at was verified as official when first introduced to the cask
  url "http://www.ambiera.at/downloads/RocketCake-#{version.major_minor}.dmg"
  name 'RocketCake'
  homepage 'http://www.ambiera.com/rocketcake/index.html'

  app 'RocketCake.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ambiera.rocketcake.sfl'
end
