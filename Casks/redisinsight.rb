cask 'redisinsight' do
  version '1.6.0'
  sha256 '3ff46465ebe7612af2dc5716bae3ab830e0c23839cb2ef37b84fd9f3b423daf3'

  url "https://downloads.redisinsight.redislabs.com/#{version}/redisinsight-mac.dmg"
  appcast 'https://docs.redislabs.com/latest/ri/release-notes/'
  name 'RedisInsight'
  homepage 'https://www.redislabs.com/redisinsight/'

  app 'redisinsight.app'

  zap trash: '~/Library/Saved Application State/com.redislabs.redisinsight.savedState'
end
