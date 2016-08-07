cask 'hots-replay-uploader' do
  version '2.0.5'
  sha256 '1e817b826f39e2b4a61d0300e6b762fd9a90d175b6f77a08b9cdb5da6d0a7584'

  url "https://github.com/eivindveg/HotSUploader/releases/download/v#{version}/HotS.Replay.Uploader-#{version}.dmg"
  appcast 'https://github.com/eivindveg/HotSUploader/releases.atom',
          checkpoint: 'bf10b65d7d029267f7246abaa4f57b5b479635253d1ccb2e695064c85ef1cdfd'
  name 'HotS Replay Uploader'
  homepage 'https://github.com/eivindveg/HotSUploader/'
  license :apache

  app 'HotS Replay Uploader.app'
end
