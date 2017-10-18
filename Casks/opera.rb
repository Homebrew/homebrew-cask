cask 'opera' do
  version '48.0.2685.39'
  sha256 '5d125cf7f32cb10547332bf903924a210a2f67b80a0ae4dc19899efbcc580076'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
