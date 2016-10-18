cask 'houdahspot' do
  version '4.2.5'
  sha256 'ed265f5ff7e80dbd4e5e8b2bb09c52c47bec747ae18f6628c9d5a26edf9b5f51'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: 'b73ed121c8c7ccf191d78c0a87a6c00a12740762e590bb28741a9da32c113a30'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
