cask 'emby-server' do
  version '3.5.2.0'
  sha256 '157b3fa2a86b0488f5845fb9ed2e828aff6f02bfc9dc7c5f5b60732de2f4dbe4'

  # github.com/MediaBrowser/Emby.Releases was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
