cask 'houdahspot' do
  version '4.3.6'
  sha256 '6b11c96d4683f8be495263c66ed1ac49bd22759494ae91f7c495cc8d36b496ed'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: 'cde7f770c31c9db0ba31f9081e9749e0d330e3befc4b5256465421a7207898d2'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
