cask 'houdahgeo' do
  version '4.4'
  sha256 '065c215e8c61081d4ff6c925ea20a56ba87d08633d2796aa423066ba9cf1f041'

  url "https://www.houdah.com/houdahGeo/updates4/cast_assets/HoudahGeo#{version}.zip"
  appcast "https://www.houdah.com/houdahGeo/updates#{version.major}/cast.xml",
          :sha256 => '9f98899dd18d866a1d919eed043878e79528a8fe677cf56e8f7cb93aaefd3610'
  name 'HoudahGeo'
  homepage 'https://houdah.com/houdahGeo/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'HoudahGeo.app'
end
