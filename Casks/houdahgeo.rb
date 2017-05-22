cask 'houdahgeo' do
  version '5.1.8'
  sha256 '151b4c5ec060a4c9493a1b235b60595a2e2a1a01b22da1818c91f83a99efd27c'

  url "https://www.houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  name 'HoudahGeo'
  homepage 'https://www.houdah.com/houdahGeo/'

  depends_on macos: '>= :mountain_lion'

  app 'HoudahGeo.app'
end
