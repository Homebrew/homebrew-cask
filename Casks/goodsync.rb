cask 'goodsync' do
  version '10.9.0'
  sha256 'ad93acdea828d49325fdcb59804a0b0ffccd4f89d62cf9bdef14599d6a42fbd0'

  url "https://www.goodsync.com/download/goodsync-v#{version.major}-mac.dmg"
  appcast 'https://www.goodsync.com/download',
          checkpoint: '236553cd33b05bf55a58afb335f3a8653a54bda4cf93309ba56018a98e44de4a'
  name 'GoodSync'
  homepage 'https://www.goodsync.com/'

  depends_on macos: '>= :yosemite'

  app 'GoodSync.app'
end
