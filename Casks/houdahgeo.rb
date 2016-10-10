cask 'houdahgeo' do
  version '4.5.2'
  sha256 '37ac95c985b6c6a9e03f4e433016f62a93345fa38956d8a1db8498f5b4af9d9f'

  url "https://www.houdah.com/houdahGeo/updates4/cast_assets/HoudahGeo#{version}.zip"
  appcast "https://www.houdah.com/houdahGeo/updates#{version.major}/cast.xml",
          checkpoint: '5aa4e716671211b38c80ddbe1946c623f201f4bb0039e20e4c7046dce20ac00e'
  name 'HoudahGeo'
  homepage 'https://houdah.com/houdahGeo/'

  depends_on macos: '>= :mountain_lion'

  app 'HoudahGeo.app'
end
