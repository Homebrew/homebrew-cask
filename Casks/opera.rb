cask 'opera' do
  version '56.0.3051.36'
  sha256 'e3aa45dc9f8a048a2944f15880155f665d306140162c045fe35dad5e33c11cb2'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
