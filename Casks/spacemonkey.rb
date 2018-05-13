cask 'spacemonkey' do
  version '0.7.27,155'
  sha256 '4fb6d11f06b0ae437178659853c755c6ba5c9e4a8737e62af705b03be800abd7'

  # hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c',
          checkpoint: '0ef471057224f3fd5dfc3e2ba54b90e0ce3c0ef7bd870705bb85abd724fe1c5d'
  name 'Space Monkey'
  homepage 'https://www.spacemonkey.com/'

  auto_updates true

  app 'SpaceMonkey.app'
end
