cask 'opera' do
  version '37.0.2178.54'
  sha256 'a9d0a986bf9eea3ba6c781bbaf34e3ccb774c16b8066c59923fc95bb79de20de'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name 'Opera'
  homepage 'http://www.opera.com/'
  license :gratis

  app 'Opera.app'
end
