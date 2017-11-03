cask 'emby-server' do
  version '3.2.36.0'
  sha256 'e5f03cea29d77780202e50530ac7bbe7078dba3274f521c99180157a0d171321'

  # github.com/MediaBrowser/Emby was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby/releases.atom',
          checkpoint: '08ba6cfbb048d5a2a422f4ca2c255ee78eb5edcb27d8bb06a7e0d46693e174e2'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
