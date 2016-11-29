cask 'awareness' do
  version '1.1'
  sha256 'a5ce31fef63aeabde3c8cabac367fb44868de318800b4fcd9032f05b17f74cdf'

  url "http://iamfutureproof.com/downloads/Awareness-#{version}.dmg"
  name 'Awareness'
  homepage 'http://iamfutureproof.com/tools/awareness/'

  app 'Awareness.app'

  zap delete: '~/Library/Preferences/com.futureproof.awareness.plist'
end
