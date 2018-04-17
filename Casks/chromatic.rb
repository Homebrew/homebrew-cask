cask 'chromatic' do
  version '0.2.4'
  sha256 '3185ff51209c67fb25555642cb0b88da83ece27f378e4025284368fd8f54fe36'

  url 'https://download.mrgeckosmedia.com/Chromatic.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/Chromatic',
          checkpoint: '37d046621b3b0797c0aa90e95a2e33f9e37007104f58c2a0efd3cbe7939a0690'
  name 'Chromatic'
  homepage 'https://mrgeckosmedia.com/applications/info/Chromatic'

  app 'Chromatic.app'
end
