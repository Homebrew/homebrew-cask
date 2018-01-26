cask 'emby-server' do
  version '3.2.70.0'
  sha256 '5cad78024d4e9a4f6a396a5a670215665d91e009a0d1e27184d7ed6926666fdd'

  # github.com/MediaBrowser/Emby was verified as official when first introduced to the cask
  url "https://github.com/MediaBrowser/Emby/releases/download/#{version}/embyserver-osx-x64-#{version}.zip"
  appcast 'https://github.com/MediaBrowser/Emby/releases.atom',
          checkpoint: 'e199120a28828be9b51304d873e1b1064230c57020712372cee673afcabed663'
  name 'Emby Server'
  homepage 'https://emby.media/'

  app 'EmbyServer.app'

  zap trash: '~/.config/emby-server'
end
