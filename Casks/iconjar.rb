cask 'iconjar' do
  version '0.9.1,37'
  sha256 '21ef48d3eb108fefa17d2a925185e65cb6e96b52dd42ac93c137ee29a19d51d3'

  # hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79',
          checkpoint: '8ea50864567ba09ecde773b1360aef55c532f1dcaa6693e248b48e9b8f0b27ce'
  name 'IconJar'
  homepage 'http://geticonjar.com/'
  license :gratis

  app 'IconJar.app'
end
