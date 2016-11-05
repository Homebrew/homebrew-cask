cask 'spacemonkey' do
  version '0.7.24,138'
  sha256 'aa36b50a076ade356c7c065721d4e9b0a529a785cac08d70cef73dd9612c6c6f'

  # hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c',
          checkpoint: '432e79d7e5cd77de36a1e250e6474cdbeccdb0e45cbe81520d32bc6e4ba63a3c'
  name 'Space Monkey'
  homepage 'https://www.spacemonkey.com'

  auto_updates true

  app 'SpaceMonkey.app'
end
