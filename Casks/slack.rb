cask :v1 => 'slack' do
  version '1.1.4'
  sha256 'b3a6c2b651cf98d7bb817c063b3fbc9c5bb7f7ecfeb766359d1d85147267aa28'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1/app_versions/19?format=zip&avtoken=d11b1b4d9f90d53702d26bd4972a757345f1cfc0'
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          :sha256 => 'b3a6c2b651cf98d7bb817c063b3fbc9c5bb7f7ecfeb766359d1d85147267aa28'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
