cask 'lightpaper' do
  version '1.1.4'
  sha256 '583afc22a29e0bd4f241b5476a1aec8291e35ebf080e4161b3f8552bf948f483'

  # hockeyapp.net is the official download host per the vendor homepage
  url 'https://rink.hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8?format=zip'
  appcast 'https://dl.dropboxusercontent.com/u/83257/LpMacUpdates/lightpaper_appcast.xml',
          checkpoint: 'efc1776aec492aef87a267155c72c88ca67c15378171fed3c35199e1522ee036'
  name 'LightPaper'
  homepage 'http://www.ashokgelal.com/lightpaper-for-mac/'
  license :gratis

  app 'LightPaper.app'
end
