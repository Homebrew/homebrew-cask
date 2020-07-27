cask "noteplan" do
  version "1.6.30,54"
  sha256 "51388ea6e157c1540907dd5efa7b2b8e752ef65d223baff34b60daab9da096a1"

  # rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380/ was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380/app_versions/#{version.after_comma}?format=zip"
  appcast "https://rink.hockeyapp.net/api/2/apps/304b4477155e428780c345bcab69b380"
  name "NotePlan"
  homepage "https://noteplan.co/"

  app "NotePlan.app"
end
