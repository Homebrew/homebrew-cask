cask :v1 => 'opera' do
  version '31.0.1889.99'
  sha256 '607a7050f3c7114798946a185cafefc716a0ec2a8e2bd0820f63998ecf58e4f2'

  url "http://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
