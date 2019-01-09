cask 'houdahgeo' do
  version '5.2.3'
  sha256 '954725c475367c8d6f65c258b8da5d1d50ce9680eadfe96a3f445329153ff166'

  url "https://www.houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  appcast 'https://www.houdah.com/houdahGeo/updates/cast5.xml'
  name 'HoudahGeo'
  homepage 'https://www.houdah.com/houdahGeo/'

  app 'HoudahGeo.app'
end
