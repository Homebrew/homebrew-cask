cask 'caffeine' do
  version '1.1.1'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url "http://lightheadsw.com/files/releases/com.lightheadsw.Caffeine/Caffeine#{version}.zip"
  name 'Caffeine'
  homepage 'http://lightheadsw.com/caffeine/'
  license :gratis

  app 'Caffeine.app'

  zap :delete => '~/Library/Preferences/com.lightheadsw.Caffeine.plist'
end
