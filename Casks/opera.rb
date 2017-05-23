cask 'opera' do
  version '45.0.2552.812'
  sha256 'c4130a0c6d53528b84d1dc677d4c1b5cff9c07e586e7240b9c8156e510798b7b'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
