cask 'opera' do
  version '34.0.2036.47'
  sha256 '04048d678e1c0b14ed8e35decb5e60af06e344ad485098055a573edbdefebf6b'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
