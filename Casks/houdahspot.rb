cask 'houdahspot' do
  version '5.0.9'
  sha256 '2378092d921ad0b70a8801d868c485a5dd24ba6bfecab88a3e926d49c6ba103b'

  url "https://www.houdah.com/houdahSpot/updates/cast5_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  depends_on macos: '>= :high_sierra'

  app 'HoudahSpot.app'
end
