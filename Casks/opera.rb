cask 'opera' do
  version '45.0.2552.881'
  sha256 'f9afb6145299283fd9dfbb9b8c04d6327e00a213a41f34cec621ebd1e7565406'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
