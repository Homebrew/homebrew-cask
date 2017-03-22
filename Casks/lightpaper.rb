cask 'lightpaper' do
  version '1.4.1'
  sha256 'fbd2ecc6128f60e44d9793edfc92355275f072e80049cbe109be5539ba42a5f0'

  # hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8?format=zip'
  appcast 'https://dl.dropboxusercontent.com/u/83257/LpMacUpdates/lightpaper_appcast.xml',
          checkpoint: 'cbeaa1256456c7ee603079bd83085365f210fc6721b3ce6c260d3ec0a6120db8'
  name 'LightPaper'
  homepage 'http://lightpaper.42squares.in/'

  app 'LightPaper.app'
end
