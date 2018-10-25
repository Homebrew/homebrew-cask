cask 'noteplan' do
  version '1.6.30,54'
  sha256 '7d2ca323227af06742e2ec232c76d861230c342ede228bea4d52c6837843140d'

  # rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380'
  name 'NotePlan'
  homepage 'https://noteplan.co/'

  app 'NotePlan.app'
end
