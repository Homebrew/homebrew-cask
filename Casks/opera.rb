cask 'opera' do
  version '40.0.2308.54'
  sha256 '1e7b25faa777db3a4a71be63dfaf8dea8a8d3358d4fd9f81fd0bf524b94b5156'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
