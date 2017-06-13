cask 'houdahgeo' do
  version '5.1.9'
  sha256 '281fecfc41209f36b34d37ba730a3d03c1aac07c27b6eb3b8e085bef36c82358'

  url "https://www.houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  name 'HoudahGeo'
  homepage 'https://www.houdah.com/houdahGeo/'

  depends_on macos: '>= :mountain_lion'

  app 'HoudahGeo.app'
end
