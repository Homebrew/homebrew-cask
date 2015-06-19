cask :v1 => 'slack' do
  version '1.0.5'
  sha256 '23446f24dff51624b7e8f716832bd991bd80fedd9b24ae7a4e9af3af362c7de0'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1/app_versions/11?format=zip&avtoken=17fade5206ec3940b611c6d6a2cc8ac133556c1c'
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          :sha256 => '80d1a646291ca49cc8cb993d21e393575ab2fff5cbb60f33eb108bfc434c660d'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
