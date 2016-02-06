cask 'opera' do
  version '35.0.2066.37'
  sha256 '1530503e76dd478d2c159a4a994c7b2a70edf73cf8595ff4ae84a1aec2756b7f'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
