cask 'emby-server' do
  version '4.1.1.0'
  sha256 'ae6b16dd7750856969d85285ee1e988393af816e788c69c6d7698cb91dc1510f'

  # github.com/MediaBrowser/Emby.Releases was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  depends_on macos: '>= :sierra'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
