cask 'houdahgeo' do
  version '4.4.1'
  sha256 '176e173246803325f3864607244729aadc707d8100c9731a6a2fcc19739b6694'

  url "https://www.houdah.com/houdahGeo/updates4/cast_assets/HoudahGeo#{version}.zip"
  appcast "https://www.houdah.com/houdahGeo/updates#{version.major}/cast.xml",
          :sha256 => '6a894387c4db638e52d6b1057a619e688eef0e222d78df50af7e5948a0b8e594'
  name 'HoudahGeo'
  homepage 'https://houdah.com/houdahGeo/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'HoudahGeo.app'
end
