cask 'lightpaper' do
  version '1.2.2'
  sha256 'ed88ad17b53ae160af0f235aea0b10da75eeab606a83acb620ff201ebacc68bf'

  # hockeyapp.net is the official download host per the vendor homepage
  url 'https://rink.hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8?format=zip'
  appcast 'http://links.ashokgelal.com/lp-mac-update-feed',
          checkpoint: 'efc1776aec492aef87a267155c72c88ca67c15378171fed3c35199e1522ee036'
  name 'LightPaper'
  homepage 'http://lightpaper.42squares.in/'
  license :commercial

  app 'LightPaper.app'
end
