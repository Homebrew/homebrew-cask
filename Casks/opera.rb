cask 'opera' do
  version '47.0.2631.39'
  sha256 '8adcc219e860094a7301052823d96a81a52be57da0320bbfd359477221818b57'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
