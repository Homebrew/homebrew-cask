cask 'houdahspot' do
  version '4.2.6'
  sha256 '620adc29fc4e0763b32e2e505c3c9b57beaa5e32b9e50a5aca040c225f4c525d'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: '503424f8a19f4b67338fd77b449a5e8c2fa509d16e9a9b391333a696026d28e6'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
