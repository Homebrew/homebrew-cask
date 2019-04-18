cask 'emby-server' do
  version '4.1.0.26'
  sha256 '3d0404afa5fc7864bb6b1e1ca237c46fc06185aec6ee7bcd1b7d2ce190515d2a'

  # github.com/MediaBrowser/Emby.Releases was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  depends_on macos: '>= :sierra'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
