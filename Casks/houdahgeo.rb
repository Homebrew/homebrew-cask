cask 'houdahgeo' do
  version '4.4.1'
  sha256 '176e173246803325f3864607244729aadc707d8100c9731a6a2fcc19739b6694'

  url "https://www.houdah.com/houdahGeo/updates4/cast_assets/HoudahGeo#{version}.zip"
  appcast "https://www.houdah.com/houdahGeo/updates#{version.major}/cast.xml",
          :checkpoint => '8b8704052d23013297a6e41cd6ee01cbc964989082c0bcbf9e4f6ab05767f1f6'
  name 'HoudahGeo'
  homepage 'https://houdah.com/houdahGeo/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'HoudahGeo.app'
end
