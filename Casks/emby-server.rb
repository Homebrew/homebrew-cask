cask 'emby-server' do
  version '4.2.0.40'
  sha256 '613e96475b09389be896d8662788b479447431a0f1ea6799017bc27040ba347e'

  # github.com/MediaBrowser/Emby.Releases was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  depends_on macos: '>= :sierra'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
