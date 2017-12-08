cask 'emby-server' do
  version '3.2.50.0'
  sha256 'bb5a6bf701d604a751fdec8183db48cf457aa431040e9d0813a3634bd592705b'

  # github.com/MediaBrowser/Emby was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby/releases.atom',
          checkpoint: '4753cd74957ef927b539ba5b3b5d1a18eaa75ce6a5e27a9ce63650badf3625d0'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
