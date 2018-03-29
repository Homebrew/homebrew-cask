cask 'opera' do
  version '52.0.2871.37'
  sha256 'cacb1998b3445c225cc7d1f056d1419a7440d448f1816bb84ed6a3bdbd4b9916'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
