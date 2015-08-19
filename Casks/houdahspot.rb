cask :v1 => 'houdahspot' do
  version '4.0.9'
  sha256 '9494ce5fa33243d9196683b622d5a1ea5df2aed17a6a6e2086b5168b05221ccb'

  url "http://www.houdah.com/houdahSpot/download_assets/HoudahSpot#{version}.zip"
  appcast "http://www.houdah.com/houdahSpot/updates/cast#{version.to_i}.xml",
          :sha256 => '45f0570d244b214809b7949340d9c5c92cfde57926cb5c06e12ecd41b18a1edb'
  name 'HoudahSpot'
  homepage 'http://www.houdah.com/houdahSpot/'
  license :commercial

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
