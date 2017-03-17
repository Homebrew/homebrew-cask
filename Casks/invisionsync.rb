cask 'invisionsync' do
  version '1.8.3-684'
  sha256 '17646577e2bf6be6ec96eeffe2bdb12853425673bc22c19946bf5b31a6f1a2fa'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.sub(%r{^.*?-}, '')}.zip"
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml',
          checkpoint: 'bfd3c6b2e7746c0fbe2c89cdefc245e4d8daefc3592d263de299bb05969017fb'
  name 'InVision Sync'
  homepage 'https://www.invisionapp.com/'

  app 'InVisionSync.app'
end
