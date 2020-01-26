cask 'goodsync' do
  version '10.10.20.7'
  sha256 '85459f65c0cd98b65bf6bd25d970d5056d8e849572181566d9681a1154c523bb'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
