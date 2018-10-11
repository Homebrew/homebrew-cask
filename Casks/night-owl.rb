cask 'night-owl' do
  version '2.88'
  sha256 'a1e606d0f90f4c0c768b516abf811c5aa314e0ba8dc9802f65d26b96c3c7e367'

  # aki-null.net was verified as official when first introduced to the cask
  url 'https://aki-null.net/yf/NightOwl.zip'
  appcast 'https://aki-null.net/yf/distribution/changelog_sl_en.html'
  name 'NightOwl'
  name 'YoruFukurou'
  homepage 'https://sites.google.com/site/yorufukurou/home-en'

  depends_on macos: '>= :sierra'

  app 'Night Owl.app'
end
