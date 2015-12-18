cask 'hots-replay-uploader' do
  version '2.0.1'
  sha256 '800b6c3f6a1648815a66dfdbfdd4012436c455bf17cbc1ad26d30030877d6d6b'

  url "https://github.com/eivindveg/HotSUploader/releases/download/v#{version}/HotS.Replay.Uploader-#{version}.dmg"
  appcast 'https://github.com/eivindveg/HotSUploader/releases.atom'
  name 'HotS Replay Uploader'
  homepage 'https://github.com/eivindveg/HotSUploader/'
  license :apache

  app 'HotS Replay Uploader.app'
end
