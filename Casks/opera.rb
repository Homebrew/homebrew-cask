cask 'opera' do
  version '54.0.2952.64'
  sha256 'f332bc940a5f05bb859a386dbf9091a76d595c4f0799ab66271dbf4e3b097c8b'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
