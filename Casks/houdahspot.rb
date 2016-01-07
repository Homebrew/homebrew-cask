cask 'houdahspot' do
  version '4.1.2'
  sha256 'bc3162424af7f82364202593257fe6771de5fa8f97d37ead4256cfc6f8f45e94'

  url "https://www.houdah.com/houdahSpot/updates/cast4_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          :sha256 => 'cbaea676d2684a8b2f5709cedc63ac66e462e079d8519c9117bc2ebf5200579d'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'
  license :commercial

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
