cask 'noteplan' do
  version '1.6.27,51'
  sha256 '34cae69c6290e33f88fa76ba3ebfab9ba2823a6c22d975f560cf78d700520210'

  # rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380'
  name 'NotePlan'
  homepage 'https://noteplan.co/'

  app 'NotePlan.app'
end
