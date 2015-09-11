cask :v1 => 'houdahgeo' do
  version '4.2.4'
  sha256 '61dfe3f6d7e5ad9064bfd79b13ab0247564b603cd77ab5e8c84013d59b0ed0b8'

  url "http://houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  appcast "http://www.houdah.com/houdahGeo/updates#{version.to_i}/profileInfo.php",
          :sha256 => 'b4011eadaeaae8c634bf05984284cc1794d8d624ce8b4ec4c69d9df30a973471'
  name 'HoudahGeo'
  homepage 'http://houdah.com/houdahGeo/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'HoudahGeo.app'
end
