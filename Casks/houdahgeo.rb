cask 'houdahgeo' do
  version '4.4.3'
  sha256 '52d22cd9f3907dd7ddc666cdb77a0865211f920e60442d597fc0f9a7691b874d'

  url "https://www.houdah.com/houdahGeo/updates4/cast_assets/HoudahGeo#{version}.zip"
  appcast "https://www.houdah.com/houdahGeo/updates#{version.major}/cast.xml",
          checkpoint: 'e12e06a5505920f7930d6a74d10ecd7a457f744377d42ca0ad27925b70e35828'
  name 'HoudahGeo'
  homepage 'https://houdah.com/houdahGeo/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'HoudahGeo.app'
end
