cask 'houdahspot' do
  version '4.3.2'
  sha256 'c634f327692cb1acb106e76b86621f267351ba2a2311e9a65ba01399765809e9'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: 'eee3109d1b1c4e22ad75d54e7a9158eb14db047f15b0e9ade6adb895202c787d'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
