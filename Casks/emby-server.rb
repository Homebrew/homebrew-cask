cask 'emby-server' do
  version '3.2.60.0'
  sha256 'e85a86a82fb6cc1324fc5de341f7e3672e575f55da5c8dea4452e991eefbd382'

  # github.com/MediaBrowser/Emby was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby/releases.atom',
          checkpoint: '58677b8443e6cb1c671425c197954279a217dc70e385b212365d63ed997452e4'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
