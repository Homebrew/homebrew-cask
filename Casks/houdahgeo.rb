cask 'houdahgeo' do
  version '4.5.2'
  sha256 '37ac95c985b6c6a9e03f4e433016f62a93345fa38956d8a1db8498f5b4af9d9f'

  url "https://www.houdah.com/houdahGeo/updates4/cast_assets/HoudahGeo#{version}.zip"
  appcast "https://www.houdah.com/houdahGeo/updates#{version.major}/cast.xml",
          checkpoint: '5803c2e0f7fcc5433ef33460cbae3632b25b69910d1f986076cb6c492b52bdce'
  name 'HoudahGeo'
  homepage 'https://www.houdah.com/houdahGeo/'

  depends_on macos: '>= :mountain_lion'

  app 'HoudahGeo.app'
end
