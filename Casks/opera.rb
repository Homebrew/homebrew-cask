cask :v1 => 'opera' do
  version '25.0.1614.50'
  sha256 '289cbce26977ed7ef6b082d64392c1addfc94642752bc17ae9bf56fcc753dd69'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/'
  license :unknown

  app 'Opera.app'
end
