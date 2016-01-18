cask 'slack' do
  version '1.1.10'
  sha256 '201aaf4134e842fe61efc740027140776c331ba13284bac9f1d01f887da75220'

  # fastly.net is the official download host per the vendor homepage
  url "https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          checkpoint: 'c2d90475179172f1e067b7b948da6c536a25c19568c2b1085ba67751fe75933c'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
