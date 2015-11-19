cask :v1 => 'houdahspot' do
  version '4.1'
  sha256 'ecd30e68eb8a19e70887701b24b978c82b2498df46873bd2a08882b5484b8630'

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
