cask 'noteplan' do
  version '1.6.25'
  sha256 '5bc778be8f4620aac021606a0ad1db94af2b1241c6fb34fc1bcb93a1ac915aa5'

  # rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380/?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380',
          checkpoint: 'f9255ceadec4ed03ce4be87460aaddc45cd90ccd16ccfccdac1fbd511af8cfa1'
  name 'NotePlan'
  homepage 'http://noteplan.co/'

  app 'NotePlan.app'
end
