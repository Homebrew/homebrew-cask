cask 'emby-server' do
  version '4.3.0.30'
  sha256 'db1540ee6cdbd7eaf80f866074fdd9f949c283a8780f115c52e7b428742c08c3'

  # github.com/MediaBrowser/Emby.Releases was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  depends_on macos: '>= :high_sierra'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
