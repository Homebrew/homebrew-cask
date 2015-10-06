cask :v1 => 'houdahspot' do
  version '4.0.10'
  sha256 '7f38d62ecef2d1bcba176db303dcc93aeaba876dde4ca10693e0251eade06d1c'

  url "http://www.houdah.com/houdahSpot/download_assets/HoudahSpot#{version}.zip"
  appcast "http://www.houdah.com/houdahSpot/updates/cast#{version.to_i}.xml",
          :sha256 => 'c0d87a1eb7f1a6611bd6048eeb6804b8d5c916210bcaa1cc06812a058aaf3cfb'
  name 'HoudahSpot'
  homepage 'http://www.houdah.com/houdahSpot/'
  license :commercial

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
