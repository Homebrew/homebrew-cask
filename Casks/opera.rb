cask :v1 => 'opera' do
  version '30.0.1835.59'
  sha256 '0d0bfd4133288dd9423bcf9ea0b26eb2da335e8f45ed2a36a50cf0d95f0055b2'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
