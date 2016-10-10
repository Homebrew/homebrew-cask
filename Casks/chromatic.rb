cask 'chromatic' do
  version '0.2.4'
  sha256 '3185ff51209c67fb25555642cb0b88da83ece27f378e4025284368fd8f54fe36'

  url 'https://download.mrgeckosmedia.com/Chromatic.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/Chromatic',
          checkpoint: '36c8f273a93367b4fe2284c0d279dbca49009584b368bbf35cac0250234b1afe'
  name 'Chromatic'
  homepage 'https://mrgeckosmedia.com/applications/info/Chromatic'

  app 'Chromatic.app'
end
