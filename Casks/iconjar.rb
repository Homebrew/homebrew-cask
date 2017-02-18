cask 'iconjar' do
  version '0.9.5.2,103'
  sha256 'dc74b92f7e32e042ce72115a7caa262c7369d00f5bd4bf3832af0c6c0d11cc4a'

  # hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79',
          checkpoint: '5a30ef3b0be22eeb3f047ab72e997643a2e9b23f63b54ad409618c056b2d3efc'
  name 'IconJar'
  homepage 'https://geticonjar.com/'

  app 'IconJar.app'
end
