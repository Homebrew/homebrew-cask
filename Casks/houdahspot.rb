cask 'houdahspot' do
  version '5.0.4'
  sha256 'd457092eb7fe8c3db2f19483efc02cdf5be893ba860000af3f561d8f9f73d1e4'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
