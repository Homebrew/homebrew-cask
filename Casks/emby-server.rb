cask 'emby-server' do
  version '4.2.0.40'
  sha256 'a23ea1dbcfe20e6356954d571d3015be434710ef78b4135c98e1086822c0a13d'

  # github.com/MediaBrowser/Emby.Releases was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  depends_on macos: '>= :sierra'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
