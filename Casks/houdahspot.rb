cask 'houdahspot' do
  version '4.2.3'
  sha256 '84fd159f36012569c10ab2fb62a774b39ea32a2b4ae00634388441d28b82ce6e'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: '5c99b50c655ceef16c50d5056d4bd749a89f12beb701b6057732fdaf94fe2026'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'
  license :commercial

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
