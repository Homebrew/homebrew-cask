cask :v1 => 'slack' do
  version '1.1.0'
  sha256 '456d6b246798d119a02618ef04ff859fb2d033af093939311840ac75f957d907'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1/app_versions/12?format=zip&amp;avtoken=ffda7dec87a25882037354c67ce9606d2827444b'
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          :sha256 => '0cd5e62fc4934b2939bec7d238f08e957e85333cd3d6b36a13e896b1851dba68'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
