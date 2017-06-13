cask 'lightpaper' do
  version '1.4.2'
  sha256 '7e1f7f8304bd2b299e7973a34d55e9c5b6b57b9987f51c3e2200897150c06923'

  # hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/789cfa8846464727ae0fdb176ec8d3c8?format=zip'
  appcast 'http://links.ashokgelal.com/lp-mac-update-feed',
          checkpoint: 'a69ba60cca5db29c7f0fb60b4cc54ccc197aa53e4795a1f0af2209d6a1a726b6'
  name 'LightPaper'
  homepage 'http://lightpaper.42squares.in/'

  app 'LightPaper.app'
end
