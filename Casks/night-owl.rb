cask 'night-owl' do
  version '2.91'
  sha256 '08b8d1201e5b013110bcd669c7dc0d40597684a5e70c31c10cf2b96012e7109c'

  # aki-null.net was verified as official when first introduced to the cask
  url 'https://aki-null.net/yf/NightOwl.zip'
  appcast 'https://sites.google.com/site/yorufukurou/distribution/appcast.xml'
  name 'NightOwl'
  name 'YoruFukurou'
  homepage 'https://sites.google.com/site/yorufukurou/home-en'

  depends_on macos: '>= :mojave'

  app 'Night Owl.app'
end
