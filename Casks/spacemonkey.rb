cask 'spacemonkey' do
  version '0.7.22,135'
  sha256 '3890a4710782ff95b1f892548b9e7b95df06050b958c8c565e171d44752aec51'

  # hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c',
          checkpoint: 'f2b61b62eea11d2c1d970740b4c6c04437d31469ac29160100d3fba723fdad4d'
  name 'Space Monkey'
  homepage 'https://www.spacemonkey.com'

  auto_updates true

  app 'SpaceMonkey.app'
end
