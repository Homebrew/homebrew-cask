cask 'iconjar' do
  version '0.9.5.1,89'
  sha256 '5d9fdb9b01ee1b923feb7f8988f185a0241209f852390a03e034d500fc477f0f'

  # hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79',
          checkpoint: '3f34654a6dc9d2ccdb0fb7f2bcf9fa6c296cf3d5dbd48fb92211bbba9e9c812f'
  name 'IconJar'
  homepage 'http://geticonjar.com/'

  app 'IconJar.app'
end
