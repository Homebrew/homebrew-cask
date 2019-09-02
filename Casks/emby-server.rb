cask 'emby-server' do
  version '4.2.1.0'
  sha256 '2f058b39b5dbce240f30aaaac0e4f57b841b299ff48c84864dfca9ea47bda8be'

  # github.com/MediaBrowser/Emby.Releases was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  depends_on macos: '>= :sierra'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
