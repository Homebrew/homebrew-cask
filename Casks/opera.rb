cask 'opera' do
  version '39.0.2256.48'
  sha256 '0898956b2a7dd20d36629f303c4b0b973dc6dc8d85145c4457e126c64adc6b0f'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
