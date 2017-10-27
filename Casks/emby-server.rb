cask 'emby-server' do
  version '3.2.34.0'
  sha256 '056ae9eb2c4b8876ae7b28caeb708a80630024f384987949bd40568c62f47668'

  # github.com/MediaBrowser/Emby was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby/releases.atom',
          checkpoint: '8f88cb5bb9235fbca62f72c974d559aa4bbe419bf6ce83b27735a5b2375520bc'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
