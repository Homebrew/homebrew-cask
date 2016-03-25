cask 'hots-replay-uploader' do
  version '2.0.3'
  sha256 'adc3e36ece5c2bcfcedc515763edccdfa430b79835044c684712aa49642aa364'

  url "https://github.com/eivindveg/HotSUploader/releases/download/v#{version}/HotS.Replay.Uploader-#{version}.dmg"
  appcast 'https://github.com/eivindveg/HotSUploader/releases.atom',
          checkpoint: 'a6b8613ffcff32aa4924d95f78f54e34d3f6a41aacd61a6aaa25be84f480d8e9'
  name 'HotS Replay Uploader'
  homepage 'https://github.com/eivindveg/HotSUploader/'
  license :apache

  app 'HotS Replay Uploader.app'
end
