cask 'emby-server' do
  version '3.2.34.0'
  sha256 '056ae9eb2c4b8876ae7b28caeb708a80630024f384987949bd40568c62f47668'

  # github.com/MediaBrowser/Emby was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby/releases/download/v#{version}/embyserver-osx-x64-v#{version}.zip"
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
