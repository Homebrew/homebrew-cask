cask 'houdahgeo' do
  version '5.2.2'
  sha256 'cd9f17da3d48cab994451a64ce1ba676eafc19e90e532c9fb66877121a1aa815'

  url "https://www.houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  name 'HoudahGeo'
  homepage 'https://www.houdah.com/houdahGeo/'

  depends_on macos: '>= :mountain_lion'

  app 'HoudahGeo.app'
end
