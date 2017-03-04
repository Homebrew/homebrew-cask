cask 'awareness' do
  version '1.1'
  sha256 'a5ce31fef63aeabde3c8cabac367fb44868de318800b4fcd9032f05b17f74cdf'

  url "http://iamfutureproof.com/downloads/Awareness-#{version}.dmg"
  appcast 'http://iamfutureproof.com/tools/awareness/',
          checkpoint: 'f0f5ed2738d3ed856768a5a6e2f0544d0547a4ef7ce8a11f2b2cafa8863e626b'
  name 'Awareness'
  homepage 'http://iamfutureproof.com/tools/awareness/'

  app 'Awareness.app'

  zap delete: '~/Library/Preferences/com.futureproof.awareness.plist'
end
