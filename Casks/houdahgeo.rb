cask :v1 => 'houdahgeo' do
  version :latest
  sha256 :no_check

  url 'http://houdah.com/houdahGeo/download_assets/HoudahGeo_latest.zip'
  appcast 'http://www.houdah.com/houdahGeo/updates3/profileInfo.php'
  name 'HoudahGeo'
  homepage 'http://houdah.com/houdahGeo/'
  license :commercial

  app 'HoudahGeo.app'
end
