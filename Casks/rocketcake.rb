cask 'rocketcake' do
  version '1.0.4'
  sha256 '02d3bee08fa83716983561882ec93ade79e7266eefaca7eddc1f0e9e307ed650'

  # ambiera.at is the official download host per the vendor homepage
  url "http://www.ambiera.at/downloads/RocketCake-#{version.major_minor}.dmg"
  name 'RocketCake'
  homepage 'http://www.ambiera.com/rocketcake/index.html'
  license :freemium

  app 'RocketCake.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ambiera.rocketcake.sfl'
end
