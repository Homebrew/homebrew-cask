cask 'iconjar' do
  version '0.85'
  sha256 'fc8aec4891040cd1e625e5aa24102a64dca2cc730faa43f8abeeec57bb9aa562'

  # hockeyapp.net is the official download host per the vendor homepage
  url 'https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79/app_versions/32?format=zip&avtoken=03420a7f7f0094306d4402ec849916e3ad8187c1'
  appcast 'https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79',
          checkpoint: '90e3389a85fb997d005c33b402ecad84f5e9e6941378a01b348ca4301aa087d2'
  name 'IconJar'
  homepage 'http://geticonjar.com/'
  license :gratis

  app 'IconJar.app'
end
