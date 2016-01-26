cask 'houdahgeo' do
  version '4.4.1'
  sha256 '176e173246803325f3864607244729aadc707d8100c9731a6a2fcc19739b6694'

  url "https://www.houdah.com/houdahGeo/updates4/cast_assets/HoudahGeo#{version}.zip"
  appcast "https://www.houdah.com/houdahGeo/updates#{version.major}/cast.xml",
          checkpoint: '68dd3610d47642693f02777cbd6ca518ed9a7811c4d39e4ee66e2a7f7014022d'
  name 'HoudahGeo'
  homepage 'https://houdah.com/houdahGeo/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'HoudahGeo.app'
end
