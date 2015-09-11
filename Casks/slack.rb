cask :v1 => 'slack' do
  version '1.1.3'
  sha256 'd668bbf0aa1fd857dcb169df2e4040799a77e55e980255557e3e6e69b71773fd'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1/app_versions/18?format=zip&avtoken=4519a445adc85152ea227dbf2b3675ee0a4ffe54'
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          :sha256 => 'd9ed4686be46ffe4a3a67a2232c9bfe8dd5c96b7615b18467f42474b97c3678a'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
