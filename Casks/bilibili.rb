cask 'bilibili' do
  version '2.48'
  sha256 'd81895d397f9bc03287013a67f5bbb7f1005d34dc8024e68b77a9a67c08ab5dc'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '355c1d4e22bb3f8c08efda771b2312f9c78c73a33e4c9299937317818983ba3b'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'

  auto_updates true

  app 'Bilibili.app'
end
