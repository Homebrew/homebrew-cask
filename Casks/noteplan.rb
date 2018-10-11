cask 'noteplan' do
  version '1.6.29,53'
  sha256 'a7007adc7947ab30532e0292b1e17486f18dda5803c993f75d9a5e03f9353b92'

  # rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380'
  name 'NotePlan'
  homepage 'https://noteplan.co/'

  app 'NotePlan.app'
end
