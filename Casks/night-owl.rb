cask 'night-owl' do
  version :latest
  sha256 :no_check

  # null.net is the official download host per the vendor homepage
  url 'http://aki-null.net/yf/NightOwl.zip'
  name 'YoruFukurou'
  name 'NightOwl'
  appcast 'https://sites.google.com/site/yorufukurou/distribution/appcast.xml',
          :sha256 => '773b0639a4774732129241d5fc6f92c216d92a2d203886bb784ad5844dd6ba02'
  homepage 'https://sites.google.com/site/yorufukurou/home-en'
  license :gratis

  app 'Night Owl.app'
end
