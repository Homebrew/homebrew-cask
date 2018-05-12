cask 'goodsync' do
  version '10.8.9'
  sha256 'eb451cf2e75f3f0647432319b2f0f80b427ac87533cbc1c912625ad021d60c0a'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: 'cd91460eda89bacbb35c557294d6f5ea7f97cd0b3967e1f8afc7ebd82631d4f9'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
