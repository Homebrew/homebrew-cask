cask 'emby-server' do
  version '4.3.1.0'
  sha256 'a019578c83a2e0fa34b8a7f0658a9013bbe5c2f315287a3ba910551ba8ddbfc5'

  # github.com/MediaBrowser/Emby.Releases was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  depends_on macos: '>= :high_sierra'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
