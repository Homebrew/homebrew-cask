cask :v1 => 'houdahgeo' do
  version :latest
  sha256 :no_check

  url 'http://houdah.com/houdahGeo/download_assets/HoudahGeo_latest.zip'
  name 'HoudahGeo'
  appcast 'http://www.houdah.com/houdahGeo/updates3/profileInfo.php'
  homepage 'http://houdah.com/houdahGeo/'
  license :commercial

  app 'HoudahGeo.app'
end
