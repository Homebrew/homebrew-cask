cask :v1 => 'houdahgeo' do
  version '4.3.2'
  sha256 '1d88f16a159608cf4e2a432609a3b0d0a86e53bb1b42cbac9b21899185a9ff02'

  url "http://houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  appcast "http://www.houdah.com/houdahGeo/updates#{version.to_i}/profileInfo.php",
          :sha256 => '35e84cc740c5f5ee1fcfd1936946a63ea58b97c1b2bad97b4e84d5b3446c5aeb'
  name 'HoudahGeo'
  homepage 'http://houdah.com/houdahGeo/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'HoudahGeo.app'
end
