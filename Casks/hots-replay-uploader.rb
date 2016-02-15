cask 'hots-replay-uploader' do
  version '2.0.2'
  sha256 'd70f2f6a43261e93ecca54c2d421b5709279a3123a60c717392a10c5d39fd8d3'

  url "https://github.com/eivindveg/HotSUploader/releases/download/v#{version}/HotS.Replay.Uploader-#{version}.dmg"
  appcast 'https://github.com/eivindveg/HotSUploader/releases.atom',
          checkpoint: '9d895b9d85e1f2a7d29a6026c13809ef3090eca10187e31f73249bcb5685e507'
  name 'HotS Replay Uploader'
  homepage 'https://github.com/eivindveg/HotSUploader/'
  license :apache

  app 'HotS Replay Uploader.app'
end
