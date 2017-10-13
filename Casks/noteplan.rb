cask 'noteplan' do
  version '1.6.18'
  sha256 '0427cc19a1e4c0705d1f0c8dc8fea720f474100c5f951ef4eaf79075a1582b9d'

  # rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380/?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380',
          checkpoint: '5ccfecc72b7c1f398c209db3ab4c124b223e04bc4ca262c237a241507adb79c4'
  name 'NotePlan'
  homepage 'http://noteplan.co/'

  app 'NotePlan.app'
end
