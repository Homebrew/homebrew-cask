cask 'houdahspot' do
  version '5.0.10'
  sha256 '236727aa4d5d947009e447704218a19469fe04b13d3085e6c27a0133b8b212bf'

  url "https://www.houdah.com/houdahSpot/updates/cast5_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
