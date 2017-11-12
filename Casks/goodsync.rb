cask 'goodsync' do
  version '10.6.6'
  sha256 '0ea3e696d6698a151cc24876d6ddeed05c5281315f136cd7946028982985227f'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: '59673985f7d98b8bae751a0f04fc221d489bf5fbe9b52540751c1596209ecc47'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  app 'GoodSync.app'
end
