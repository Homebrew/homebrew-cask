cask 'emby-server' do
  version '4.3.0.26'
  sha256 '75ff31830103f53fed923ad6763d5416e4d060810b1be736558394587631d76a'

  # github.com/MediaBrowser/Emby.Releases was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  depends_on macos: '>= :high_sierra'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
