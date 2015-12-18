cask 'houdahgeo' do
  version '4.4'
  sha256 '065c215e8c61081d4ff6c925ea20a56ba87d08633d2796aa423066ba9cf1f041'

  url "http://houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  appcast "http://www.houdah.com/houdahGeo/updates#{version.to_i}/profileInfo.php",
          :sha256 => '35e84cc740c5f5ee1fcfd1936946a63ea58b97c1b2bad97b4e84d5b3446c5aeb'
  name 'HoudahGeo'
  homepage 'http://houdah.com/houdahGeo/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'HoudahGeo.app'
end
