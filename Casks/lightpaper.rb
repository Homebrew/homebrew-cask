cask 'lightpaper' do
  version :latest
  sha256 :no_check

  # hockeyapp.net is the official download host per the vendor homepage
  url 'https://rink.hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8?format=zip'
  appcast 'http://links.ashokgelal.com/lp-mac-update-feed',
          checkpoint: 'efc1776aec492aef87a267155c72c88ca67c15378171fed3c35199e1522ee036'
  name 'LightPaper'
  homepage 'http://lightpaper.42squares.in/'
  license :gratis

  app 'LightPaper.app'
end
