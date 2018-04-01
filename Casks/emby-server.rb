cask 'emby-server' do
  version '3.3.0.0'
  sha256 'b91d88ae4bece00e1c06143d64ebc2633b75c601514832eaf5c85242bbeee683'

  # github.com/MediaBrowser/Emby was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby/releases.atom',
          checkpoint: '855d87bb4463f298d68a8bf8f36a90b5681e22060b889588967cdcc15f5b06f7'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
