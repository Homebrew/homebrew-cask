cask 'emby-server' do
  version '3.3.1.0'
  sha256 '19f79d5284595c1240820800fef62a91bcc2be1654e02a108bb93a34e69613f9'

  # github.com/MediaBrowser/Emby was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby/releases.atom',
          checkpoint: '57b260285a9470db9cc4029ff94a9453fa69be20ece7bec187617ecd35f8430b'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
