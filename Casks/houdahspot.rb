cask 'houdahspot' do
  version '4.1.3'
  sha256 'c585938cfddd32877aac9ed82cecbccc94395e647912bdb70b10415f045038cd'

  url "https://www.houdah.com/houdahSpot/updates/cast4_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: '1e5d7811751c987894fb41799ddb666ce802e568dd76c6de55c9ff2f75bac963'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'
  license :commercial

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
