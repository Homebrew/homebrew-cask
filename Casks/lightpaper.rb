cask 'lightpaper' do
  version '1.3.1'
  sha256 '4df2fa5a481fc7ed9e9b3afc548a78199b12c7a6006011f0642e93339d06bcc3'

  # hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8?format=zip'
  appcast 'https://dl.dropboxusercontent.com/u/83257/LpMacUpdates/lightpaper_appcast.xml',
          checkpoint: '82bbbb41cd12179fd15583927586a2a4a60d0237be095f30c795aad9a7aa85cd'
  name 'LightPaper'
  homepage 'http://lightpaper.42squares.in/'

  app 'LightPaper.app'
end
