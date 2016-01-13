cask 'night-owl' do
  version :latest
  sha256 :no_check

  # null.net is the official download host per the vendor homepage
  url 'https://aki-null.net/yf/NightOwl.zip'
  appcast 'https://sites.google.com/site/yorufukurou/distribution/appcast.xml',
          :checkpoint => 'c5b6bf63c12d377c8759b21a2dc4da903a1097019f5b23997162ede6f1f0f970'
  name 'NightOwl'
  name 'YoruFukurou'
  homepage 'https://sites.google.com/site/yorufukurou/home-en'
  license :gratis

  app 'Night Owl.app'
end
