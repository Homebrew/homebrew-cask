cask 'goodsync' do
  version '10.10.17.7'
  sha256 'd6881ce5a299c55aa5540760c05219381bb10a38909cb1467524ce97a1ab3f3f'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download?os=macos',
          configuration: version.major_minor_patch
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
