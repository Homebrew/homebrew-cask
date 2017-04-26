cask 'mongoclient' do
  version '2.0.0'
  sha256 'b9652b457ab66c6797cc8a83623c248ae56fe0ee8d1b0c4c9b95ff71104e2bea'

  # github.com/mongoclient/mongoclient was verified as official when first introduced to the cask
  url "https://github.com/mongoclient/mongoclient/releases/download/#{version}/osx-portable.zip"
  appcast 'https://github.com/mongoclient/mongoclient/releases.atom',
          checkpoint: '7a8466a1cd519ee10758c002fe61da5c817b90d6f6215dbf70f99e7ca50733a0'
  name 'Mongoclient'
  homepage 'https://www.mongoclient.com/'

  app 'Mongoclient.app'

  zap delete: [
                '~/Library/Application Support/Mongoclient',
                '~/Library/Preferences/com.electron.mongoclient.helper.plist',
                '~/Library/Preferences/com.electron.mongoclient.plist',
                '~/Library/Preferences/Mongoclient',
              ]
end
