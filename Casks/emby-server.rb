cask 'emby-server' do
  version '3.4.1.0'
  sha256 '04f25b40cbe854011f3067b5e457dea28d52f24ffcd895bb3e4ae379eec3b94a'

  # github.com/MediaBrowser/Emby was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby/releases.atom',
          checkpoint: '9c8ad76e014a80874c5436bbaf658897af4b1bc821226331204858a096c3ed71'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
