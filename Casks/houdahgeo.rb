cask 'houdahgeo' do
  version '4.4.2'
  sha256 'af66aeecbf9a898a715a072d70eac2fa987cc1639a27162e02647da5fe7495b9'

  url "https://www.houdah.com/houdahGeo/updates4/cast_assets/HoudahGeo#{version}.zip"
  appcast "https://www.houdah.com/houdahGeo/updates#{version.major}/cast.xml",
          checkpoint: '908b7c54f370b56d929e271ad358493987bf2681d72236b69be3e68181b4bddf'
  name 'HoudahGeo'
  homepage 'https://houdah.com/houdahGeo/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'HoudahGeo.app'
end
