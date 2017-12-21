cask 'emby-server' do
  version '3.2.50.0'
  sha256 'bb5a6bf701d604a751fdec8183db48cf457aa431040e9d0813a3634bd592705b'

  # github.com/MediaBrowser/Emby was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby/releases.atom',
          checkpoint: 'bbafec4c3a8be87398119c2817428486a4c17335a77f57bb12576917db988d31'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
