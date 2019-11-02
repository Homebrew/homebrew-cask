cask 'goodsync' do
  version '10.10.12.2'
  sha256 '5b2a6a0a72e5059f30887d0111a96c98705b640c7d6f9330836365c5b5cd617d'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
