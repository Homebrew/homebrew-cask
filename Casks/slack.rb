cask :v1 => 'slack' do
  version '1.0.2'
  sha256 '09c92acb4cd79bd94418bf1aebcc3675a0cc4e4125d72d202be237bf06507235'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1/?format=zip'
  homepage 'http://slack.com'
  license :unknown

  app 'Slack.app'
end
