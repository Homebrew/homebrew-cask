cask 'night-owl' do
  version '2.84'
  sha256 'd0164267c85303195efeaa0bb62b6094667e2fd8e72f8acaeb18a36dca8d4c6b'

  # null.net is the official download host per the vendor homepage
  url 'https://aki-null.net/yf/NightOwl.zip'
  appcast 'https://aki-null.net/yf/distribution/changelog_sl_en.html',
          checkpoint: '766f5fa2993d8d1e306449dac998b5620f30d4798e379564e0837e9eab963794'
  name 'NightOwl'
  name 'YoruFukurou'
  homepage 'https://sites.google.com/site/yorufukurou/home-en'
  license :gratis

  app 'Night Owl.app'
end
