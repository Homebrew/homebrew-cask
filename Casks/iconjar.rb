cask :v1 => 'iconjar' do
  version '0.6'
  sha256 'a491185d55c0d01c959b8f1e5eda9e6bcfc4405c98de9f505ac03a78b3650fd0'

  # hockeyapp.net is the official download host per the vendor homepage
  url 'https://rink.hockeyapp.net/api/2/apps/b91fcb22f1ac5013dad6ffde2dca7c79/app_versions/9?format=zip&avtoken=0c747f07c4b5fe936a1af5b4dbbc9c1432ebc030'
  name 'IconJar'
  homepage 'http://geticonjar.com/'
  license :gratis

  app 'IconJar.app'
end
