cask 'opera' do
  version '46.0.2597.46'
  sha256 'd78edac34af53a47cf0de945641cc63dc0ec9b5c76ff255b3c783506822c965a'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  app 'Opera.app'
end
