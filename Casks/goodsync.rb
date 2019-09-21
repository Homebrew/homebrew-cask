cask 'goodsync' do
  version '10.10.8.8'
  sha256 '232e40a7ab60a45c53d173bba88ae8abd3147e51676c2d3adb3a4c6a5be74c3f'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/news-mac',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
