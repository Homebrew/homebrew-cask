cask :v1 => 'houdahgeo' do
  version '4.2.3'
  sha256 '1eca862a9877e4640b064ba1d4c8f1f17bd688f5047bed632221ca17637754b7'

  url "http://houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  appcast "http://www.houdah.com/houdahGeo/updates#{version.to_i}/profileInfo.php",
          :sha256 => 'b958219d5a4fd405d1ec7855df315350810558e61397aa30ac1aeaf08b6477b3'
  name 'HoudahGeo'
  homepage 'http://houdah.com/houdahGeo/'
  license :commercial

  app 'HoudahGeo.app'
end
