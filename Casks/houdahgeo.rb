cask 'houdahgeo' do
  version '5.2.3'
  sha256 '954725c475367c8d6f65c258b8da5d1d50ce9680eadfe96a3f445329153ff166'

  url "https://www.houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  name 'HoudahGeo'
  homepage 'https://www.houdah.com/houdahGeo/'

  depends_on macos: '>= :mountain_lion'

  app 'HoudahGeo.app'
end
