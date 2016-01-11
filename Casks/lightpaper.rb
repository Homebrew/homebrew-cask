cask 'lightpaper' do
  version '1.1.4'
  sha256 '583afc22a29e0bd4f241b5476a1aec8291e35ebf080e4161b3f8552bf948f483'

  # hockeyapp.net is the official download host per the vendor homepage
  url 'https://rink.hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8?format=zip'
  appcast 'https://dl.dropboxusercontent.com/u/83257/LpMacUpdates/lightpaper_appcast.xml',
          :sha256 => 'a55a5acea12fcac860027f454defa85e4ce5146216eff4c5c2d7769e8c6399fb'
  name 'LightPaper'
  homepage 'http://www.ashokgelal.com/lightpaper-for-mac/'
  license :gratis

  app 'LightPaper.app'
end
