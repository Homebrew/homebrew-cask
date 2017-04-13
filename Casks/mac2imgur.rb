cask 'mac2imgur' do
  version 'b221'
  sha256 '72e75d3878eac82914b88d1cf1e4dd164fdebb864daa748bc665686f5dbbb93e'

  url "https://github.com/mileswd/mac2imgur/releases/download/#{version}/mac2imgur.zip"
  appcast 'https://mileswd.com/mac2imgur/update',
          checkpoint: '65b7e39d312b95fc9cf8e0990903f87c7b07665326c2197a96a7f607fe6ac864'
  name 'mac2imgur'
  homepage 'https://github.com/mileswd/mac2imgur'

  app 'mac2imgur.app'

  zap delete: [
                '~/Library/Caches/com.mileswd.mac2imgur',
                '~/Library/Preferences/com.mileswd.mac2imgur.plist',
              ]
end
