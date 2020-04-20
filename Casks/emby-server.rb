cask 'emby-server' do
  version '4.4.2.0'
  sha256 'c090d6ce02554fb44f498364f6d6abe8f8e7fce64ddef7f87c6f01ff331ac9bd'

  # github.com/MediaBrowser/Emby.Releases/ was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  depends_on macos: '>= :high_sierra'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
