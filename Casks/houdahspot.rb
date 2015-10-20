cask :v1 => 'houdahspot' do
  version '4.0.10'
  sha256 '7f38d62ecef2d1bcba176db303dcc93aeaba876dde4ca10693e0251eade06d1c'

  url "http://www.houdah.com/houdahSpot/download_assets/HoudahSpot#{version}.zip"
  appcast "http://www.houdah.com/houdahSpot/updates/cast#{version.to_i}.xml",
          :sha256 => 'c726d86606a58e564c077246d0e6f7238a0ebf286c047aadcd9affa1162bda71'
  name 'HoudahSpot'
  homepage 'http://www.houdah.com/houdahSpot/'
  license :commercial

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
