cask 'emby-server' do
  version '3.2.40.0'
  sha256 'aa0037e889329425a4a6a666b5430ce672fe9e8cfef440692d0178d644db046d'

  # github.com/MediaBrowser/Emby was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby/releases.atom',
          checkpoint: '383a5fddba34b06fbeac266600a2755095f8fca2257c68dfc5472eb1cc59392d'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
