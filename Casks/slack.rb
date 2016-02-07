cask 'slack' do
  version '1.1.10'
  sha256 '201aaf4134e842fe61efc740027140776c331ba13284bac9f1d01f887da75220'

  # fastly.net is the official download host per the vendor homepage
  url "https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          checkpoint: '0505bf9a7d75c00c27fd1e13eabc8aa946c1f3b6e21a3e9f0dfc4db8bcabdf54'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  auto_updates true

  app 'Slack.app'
end
