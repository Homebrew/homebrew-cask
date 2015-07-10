cask :v1 => 'houdahspot' do
  version '4.0.9'
  sha256 '6958dd61ab4bdf8b5d1dea2d94298bb544c9a982c3510dae4db72f6be3dc577c'

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
