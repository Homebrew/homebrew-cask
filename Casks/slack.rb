cask :v1 => 'slack' do
  version '1.0'
  sha256 '3cb5c52077388042006104d18ec1b7c230ededcf9f9691df2a42687e86f3b40c'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1/app_versions/4?format=zip&avtoken=826b2af93e6b167a3571c3823019254f0352efd3'
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          :sha256 => '0bfbef89c2b420d7485baf482cdd82d84f5e529c92cca653996e15ca5e6ba3c6'
  homepage 'http://slack.com'
  license :unknown

  app 'Slack.app'
end
