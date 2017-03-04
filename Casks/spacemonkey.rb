cask 'spacemonkey' do
  version '0.7.26,140'
  sha256 '2fce0a2c82baf3df20a1e92accd3bdb44e745a2b0957afac9903ada2ce326691'

  # hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c',
          checkpoint: '51a258a879da03822958429db1756f299c55e8ce1ecf30936b71e6850ec2a6fa'
  name 'Space Monkey'
  homepage 'https://www.spacemonkey.com/'

  auto_updates true

  app 'SpaceMonkey.app'
end
