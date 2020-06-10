cask 'emby-server' do
  version '4.4.3.0'
  sha256 'b8d495a3f7703d020a2a9f6370fe802d6bfcc21a13c437c081a7af076ae028cd'

  # github.com/MediaBrowser/Emby.Releases/ was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby.Releases/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby.Releases/releases.atom'
  name 'Emby Server'
  homepage 'https://emby.media/'

  depends_on macos: '>= :high_sierra'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
