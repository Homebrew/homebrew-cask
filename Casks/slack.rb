cask :v1 => 'slack' do
  version '1.1.1'
  sha256 'e8266e75d250c6d2d732e41af7f0c5045f542396f60cb7693c64cf46693c7a87'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1/app_versions/13?format=zip&amp;avtoken=a300ec64cfc37d3d9c52882cfcb8acb21658a0a5'
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          :sha256 => 'e21d63e8c1f76fb09ba7d04c2a48bc8d5bb2cc5787ed0396fc2e9ba3a19969d8'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
