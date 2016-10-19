cask 'iconjar' do
  version '0.9.5.2,98'
  sha256 '21c9d6d5b37eab2fc3f31c8adc12765765dd375192616a99e2db42381354ec96'

  # hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79',
          checkpoint: '6279ca41ca42667780f330ffd5d295466dcb1113b386de276e66951b97c3a0ac'
  name 'IconJar'
  homepage 'http://geticonjar.com/'

  app 'IconJar.app'
end
