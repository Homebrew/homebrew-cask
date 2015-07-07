cask :v1 => 'night-owl' do
  version :latest
  sha256 :no_check

  # null.net is the official download host per the vendor homepage
  url 'http://aki-null.net/yf/NightOwl.zip'
  name 'YoruFukurou'
  name 'NightOwl'
  appcast 'https://sites.google.com/site/yorufukurou/distribution/appcast.xml'
  homepage 'https://sites.google.com/site/yorufukurou/home-en'
  license :gratis

  app 'Night Owl.app'
end
