cask 'noteplan' do
  version '1.6.26,50'
  sha256 'aafcda3ed2ccf4083c1f48f420679c9abcd11898d4c0dcd21499650eca234f21'

  # rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380',
          checkpoint: '3f8af4de8d34d6252e45ff4cf76a7b603bb43c07067ec4cebc67c039b1e63d2a'
  name 'NotePlan'
  homepage 'https://noteplan.co/'

  app 'NotePlan.app'
end
