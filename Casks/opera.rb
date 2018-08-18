cask 'opera' do
  version '55.0.2994.37'
  sha256 'f5342ade296dd361e54f78f42ef1a74fbf67e36f68887d3e1949a2f402707c34'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'
end
