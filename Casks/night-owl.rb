cask 'night-owl' do
  version :latest
  sha256 :no_check

  # null.net is the official download host per the vendor homepage
  url 'https://aki-null.net/yf/NightOwl.zip'
  appcast 'https://sites.google.com/site/yorufukurou/distribution/appcast.xml',
          :sha256 => '773b0639a4774732129241d5fc6f92c216d92a2d203886bb784ad5844dd6ba02'
  name 'YoruFukurou'
  name 'NightOwl'
  homepage 'https://sites.google.com/site/yorufukurou/home-en'
  license :gratis

  app 'Night Owl.app'
end
