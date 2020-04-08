cask 'emby-server' do
  version '4.4.1.0'
  sha256 'e07a356f694911ff905e84ece89f9156145f6c9db1051d8473bf0faa825374dd'

  # github.com/MediaBrowser/Emby.Releases was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  depends_on macos: '>= :high_sierra'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
