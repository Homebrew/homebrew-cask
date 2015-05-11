cask :v1 => 'reflector' do
  version '2.0.1'
  sha256 '9954c6d29c096e41a86ad3708e33461979344e53f00bc568d23f8444d7c4d357'

  url "http://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Reflector 2.app'
end
