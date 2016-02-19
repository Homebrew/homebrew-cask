cask 'lightpaper' do
  version '1.3'
  sha256 '0d30ea2e13c3ac7e541b234a97e14cb3d2ffb4afbf233dc25722710d81816916'

  # hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8?format=zip'
  appcast 'https://dl.dropboxusercontent.com/u/83257/LpMacUpdates/lightpaper_appcast.xml',
          checkpoint: 'd84e000883189b7e33f229aa8a97a325467f9f4fb205fe53786affbafa6a9565'
  name 'LightPaper'
  homepage 'http://lightpaper.42squares.in/'
  license :commercial

  app 'LightPaper.app'
end
