cask 'emby-server' do
  version '3.5.0.0'
  sha256 '2f9dfaa0e11a4fb4f7f88557bee3e58881f3084f672587c5405f9d8dcd972600'

  # github.com/MediaBrowser/Emby.Releases was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
