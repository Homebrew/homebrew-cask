cask 'redisinsight' do
  version '1.5.0'
  sha256 '9ee833e4bd22baf57e921da4e5fef02acc57bf50840bea1e265650f1b09bc000'

  url "https://downloads.redisinsight.redislabs.com/#{version}/redisinsight-mac.dmg"
  appcast 'https://docs.redislabs.com/latest/ri/release-notes/'
  name 'RedisInsight'
  homepage 'https://www.redislabs.com/redisinsight/'

  app 'redisinsight.app'

  zap trash: '~/Library/Saved Application State/com.redislabs.redisinsight.savedState'
end
