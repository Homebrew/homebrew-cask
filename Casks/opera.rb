cask 'opera' do
  version '46.0.2597.39'
  sha256 '3c2c24970faea05478a84207d7d01dc0265cb64549ccfc30323034557cf2901f'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
