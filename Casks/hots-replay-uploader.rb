cask :v1 => 'hots-replay-uploader' do
  version '2.0.0'
  sha256 'c0d5775c47b2c57a2b63bddbbb7f4c380874cb37c277b4477491fe4d7be875e2'

  url "https://github.com/eivindveg/HotSUploader/releases/download/v#{version}/HotS.Replay.Uploader-#{version}.dmg"
  appcast 'https://github.com/eivindveg/HotSUploader/releases.atom'
  name 'HotS Replay Uploader'
  homepage 'https://github.com/eivindveg/HotSUploader/'
  license :apache

  app 'HotS Replay Uploader.app'
end
