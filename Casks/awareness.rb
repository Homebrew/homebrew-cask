cask 'awareness' do
  version '1.1'
  sha256 'a5ce31fef63aeabde3c8cabac367fb44868de318800b4fcd9032f05b17f74cdf'

  url "http://iamfutureproof.com/downloads/Awareness-#{version}.dmg"
  appcast 'http://iamfutureproof.com/tools/awareness/'
  name 'Awareness'
  homepage 'http://iamfutureproof.com/tools/awareness/'

  depends_on macos: '>= :snow_leopard'

  app 'Awareness.app'

  zap trash: '~/Library/Preferences/com.futureproof.awareness.plist'
end
