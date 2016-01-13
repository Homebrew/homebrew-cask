cask 'houdahspot' do
  version '4.1.2'
  sha256 'bc3162424af7f82364202593257fe6771de5fa8f97d37ead4256cfc6f8f45e94'

  url "https://www.houdah.com/houdahSpot/updates/cast4_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          :sha256 => '8053e176c92464a84412376f1fd7530f272489c427581c02b5c8bb140e14b368'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'
  license :commercial

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
